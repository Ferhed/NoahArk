using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Buoy : MonoBehaviour {

    public InputKey input;
    public int weight = 100;
    public int speed = 1000;
    public int weightDivisor = 4;
    public AnimationCurve heightCurve;
    public float LaunchHeight;

    public GameObject splashFx;

    private void Awake()
    {
        text = GetComponentInChildren<TextMesh>();
        myCollider = GetComponent<Collider>();
    }

    // Use this for initialization
	void Start () {
        ship = Ship.instance.transform;
	}

    public void Initialize( InputKey key, Animal associatedAnimal )
    {
        input = key;

        associatedAnimal.IsDrifting = false;

        Collider[] cols = associatedAnimal.GetComponentsInChildren<Collider>();

        foreach ( Collider col in cols )
        {
            if ( col != myCollider )
            {
                col.enabled = false;
            }
        }

        Vector3 sc = transform.localScale;
        float radius = associatedAnimal.GetComponentInChildren<SphereCollider>().radius;

        DOTween.Sequence()
            .Append( transform.DOMoveX( associatedAnimal.transform.position.x, 1.0f ) )
            .Join( transform.DOMoveZ( associatedAnimal.transform.position.z, 1.0f ) )
            .Join(transform.DOScale(sc*radius*2,1.0f))
            .AppendCallback( () =>
            {
                GameObject splash = Instantiate(splashFx, transform.position, Quaternion.identity) as GameObject;
                Destroy(splash, 5f);
                splash.GetComponent<ParticleSystem>().Play();
                associatedAnimal.transform.parent = transform;
                isReady = true;
                text.text = "" + input.character;
                myCollider.enabled = true;
            } )
            .Play();
    }
    	
	// Update is called once per frame
	void Update () {
        if(time < 1)
        {
            time = Mathf.Min(1.0f, time+Time.deltaTime);
            transform.position = new Vector3( transform.position.x, heightCurve.Evaluate(time)*LaunchHeight, transform.position.z );
        }

		if(input != null
            && Input.GetKeyDown(input.key))
        {
            Displacement();
        }
	}

    void Displacement()
    {
        if(!CanMove())
        {
            return;
        }

        float step = (speed * Time.deltaTime) / ( weight / weightDivisor );
        transform.position = Vector3.MoveTowards( transform.position, ship.position, step );

        text.transform.DOShakePosition(0.5f, 0.1f);

        Vector3[] tab = { new Vector3(0, 0, 0), new Vector3(0, 0, 0) };
    }

    bool CanMove()
    {
        return isReady;
    }
    
    private bool isReady = false;
    private Collider myCollider;
    private Transform ship;
    private TextMesh text;
    private float time = 0;
}
