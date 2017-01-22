using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Animal : MonoBehaviour
{
    public AnimalInfo animalInfo;
    public float speed = 10.0f;
    public Vector3 direction;
    public Vector3 endPosition;
    
    private void Awake()
    {
        speed = Random.value < 0.5f ? speed + Random.Range( 0, speed / 2 ) : speed - Random.Range( 0, speed / 2 );
    }

    private void Update()
    {
        if(IsDrifting)
        {
            if ( Vector3.Distance( transform.position, endPosition ) < 1 )
            {
                Destroy( gameObject );
            }

            transform.position = transform.position + direction * Time.deltaTime * speed;
        }
    }

    public bool IsDrifting = true;
}
