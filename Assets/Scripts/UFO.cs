using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class UFO : MonoBehaviour {

    private float Prevision;

    private void Awake()
    {
        col = GetComponent<Collider>();
    }

    public void Initialize(Animal animal)
    {
        initialPosition = transform.position;
        Prevision = animal.speed / 3.0f;
        Prevision = Random.value < 0.5f ? Prevision + Random.Range( 0, Prevision / 2 ) : Prevision - Random.Range( 0, Prevision / 2 );
        
        targetPosition = animal.transform.position + Vector3.right * Prevision * animal.speed;

        float newPrevision = Prevision - Random.Range( 0, Prevision / 2 ) ;

        DOTween.Sequence()
            .Append( transform.DOMove( targetPosition, newPrevision ))
            .AppendCallback(()=>ActiveCapture(true))
            .AppendInterval( 2.0f + Prevision - newPrevision )
            .AppendCallback(()=>ActiveCapture(false))
            .Append( transform.DOMove( initialPosition, 3.0f ) )
            .AppendCallback(()=> Destroy(gameObject))
            .Play();
    }

    void ActiveCapture(bool Active)
    {
        col.enabled = Active;
    }

    private void OnTriggerEnter( Collider other )
    {
        if(other.tag == "Animal")
        {
            Animal capturedAnimal = other.GetComponentInParent<Animal>();
            capturedAnimal.IsDrifting = false;
            foreach(Collider col in capturedAnimal.GetComponentsInChildren<Collider>())
            {
                col.enabled = false;
            }

            capturedAnimal.transform.parent = transform;

            capturedAnimal.transform.DOMove( transform.GetComponentInChildren<MeshRenderer>().transform.position , 1.0f );
            capturedAnimal.transform.DOScale( Vector3.zero, 1.0f );
        }
    }

    Vector3 initialPosition;
    Vector3 targetPosition;
    Collider col;
}
