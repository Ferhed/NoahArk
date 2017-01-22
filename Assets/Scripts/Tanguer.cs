using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tanguer : MonoBehaviour {

    public bool canUpAndDown = true;
    public bool canTanguer = true;

    public float HeightStrength = 3.0f;
    public float InclinaisonStrength = 20.0f;
    
    public float timeScale = 1.0f;


    private void Awake()
    {
        Y = transform.position.y;
        X = transform.eulerAngles.x;
    }

    private void Start()
    {
        UpCurve = AnimalManager.instance.UpCurve;
        RotateCurve = AnimalManager.instance.RotateCurve;
    }

    void Update () {

        time = Mathf.Min( 1.0f, time + (Time.deltaTime *timeScale));
        if(time == 1)
        {
            time = 0;
        }

        if(canUpAndDown)
        {
            transform.position = new Vector3( transform.position.x,
                Y + UpCurve.Evaluate( time ) * HeightStrength,
                transform.position.z );
        }

        if(canTanguer)
        {
            transform.eulerAngles = new Vector3( X + RotateCurve.Evaluate( time ) * InclinaisonStrength,
                transform.eulerAngles.y,
                transform.eulerAngles.z );
        }		
	}

    public void Stop()
    {
        timeScale = 0;
        transform.position = new Vector3( transform.position.x, Y , transform.position.z );
        transform.eulerAngles = new Vector3( X , transform.eulerAngles.y, transform.eulerAngles.z );
    }

    private AnimationCurve UpCurve;
    private AnimationCurve RotateCurve;
    private float Y;
    private float X;
    private float time;
}
