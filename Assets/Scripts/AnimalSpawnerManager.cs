﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalSpawnerManager : MonoBehaviour {

    public static AnimalSpawnerManager instance;

    public float offSetXToSpawn = -40.0f;
    public float offSetZToSpawn = 15.0f;
    public float offSetZNearlyShip = 2.0f;

    public bool CanInvoke = true;

    public float AnimalMinInvokeTime = 1.0f;
    public float AnimalMaxInvokeTime = 3.0f;

    public float UFOMinInvokeTime = 10.0f;
    public float UFOMaxInvokeTime = 20.0f;

    private void Awake()
    {
        instance = this;
    }

    private void Start()
    {
        animalManager = AnimalManager.instance;

        Invoke( "InvokeAPoorPuppy", 1.0f );
        Invoke( "InvokeAnInvader", 2.0f );
    }

    private void InvokeAPoorPuppy()
    {
        if(!CanInvoke)
        {
            return;
        }

        animalManager.GenerateAnimal( GetAnimalSpawnPosition() );

        Invoke( "InvokeAPoorPuppy", Random.Range( AnimalMinInvokeTime, AnimalMaxInvokeTime ) );
    }

    private void InvokeAnInvader()
    {
        if ( !CanInvoke )
        {
            return;
        }

        UFO ufo = Instantiate( Resources.Load( "Prefab/UFO", typeof( UFO )) , GetInvaderSpawnPosition(), Quaternion.identity ) as UFO;
        ufo.Initialize(FoundAnimalToCatch());

        Invoke( "InvokeAnInvader", Random.Range( UFOMinInvokeTime, UFOMaxInvokeTime ) );
    }

    private Vector3 GetAnimalSpawnPosition()
    {
        float ZValue = Random.value < 0.5f ? Random.Range( -offSetZToSpawn, -offSetZNearlyShip ) : Random.Range( offSetZToSpawn, offSetZNearlyShip );

        return new Vector3( offSetXToSpawn, 0, ZValue );
    }

    private Animal FoundAnimalToCatch()
    {
        List<Animal> animals = new List<Animal>(FindObjectsOfType( typeof( Animal ) ) as Animal[]);
        for(int i = animals.Count; i > 0; i-- )
        {
            Animal animal = animals[ i-1 ];

            if(!animal.IsDrifting
                || animal.transform.position.x > 0
                )
            {
                animals.Remove( animal );
            }
        }

        if(animals.Count <= 0)
        {
            return null;
        }
        else
        {
            return animals[ Random.Range( 0, animals.Count-1 ) ];
        }
    }

    private Vector3 GetInvaderSpawnPosition()
    {
        float ZValue = Random.value < 0.5f ? offSetZToSpawn+ 5.0f : -offSetZToSpawn - 5.0f;

        float XValue = Random.Range(offSetXToSpawn , -offSetXToSpawn); 

        return new Vector3( offSetXToSpawn, 0, ZValue );
    }

    private AnimalManager animalManager;
}