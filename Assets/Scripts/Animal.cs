using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Animal : MonoBehaviour
{
    public AnimalInfo animalInfo;
    public float speed = 10.0f;

    private void Awake()
    {
        speed = Random.value < 0.5f ? speed + Random.Range( 0, speed / 2 ) : speed - Random.Range( 0, speed / 2 );
    }

    private void Update()
    {
        if(IsDrifting)
        {
            transform.position = transform.position + Vector3.right * Time.deltaTime * speed;
        }
    }

    public bool IsDrifting = true;
}
