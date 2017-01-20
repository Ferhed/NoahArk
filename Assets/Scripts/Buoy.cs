using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Buoy : MonoBehaviour {

    public InputKey input;
    public int weight = 100;
    public int speed = 1000;
    public int weightDivisor = 4;

    private void Awake()
    {
        text = GetComponentInChildren<TextMesh>();
        myCollider = GetComponent<Collider>();
    }

    // Use this for initialization
	void Start () {
        ship = Ship.instance.transform;
	}

    public void Initialize(InputKey key)
    {
        input = key;
        text.text = "" +input.character;

        GetComponentInChildren<Animal>().IsDrifting = false;

        Collider[] cols = GetComponentsInChildren<Collider>();

        foreach(Collider col in cols)
        {
            if(col!= myCollider)
            {
                col.enabled = false;
            }
        }
    }
    	
	// Update is called once per frame
	void Update () {
		if(input != null
            && Input.GetKeyDown(input.key))
        {
            Displacement();
        }
	}

    void Displacement()
    {
        float step = (speed * Time.deltaTime) / ( weight / weightDivisor );
        transform.position = Vector3.MoveTowards( transform.position, ship.position, step );
    }

    private Collider myCollider;
    private Transform ship;
    private TextMesh text;
}
