using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalSpawnerManager : MonoBehaviour {

    public static AnimalSpawnerManager instance;

    public float offSetXToSpawn = -40.0f;
    public float offSetZToSpawn = 15.0f;
    public float offSetZNearlyShip = 2.0f;

    public bool CanInvoke = true;

    public float MinInvokeTime = 1.0f;
    public float MaxInvokeTime = 3.0f;

    private void Awake()
    {
        instance = this;
    }

    private void Start()
    {
        animalManager = AnimalManager.instance;

        Invoke( "InvokeAPoorPuppy", 1.0f );
    }

    private void InvokeAPoorPuppy()
    {
        if(!CanInvoke)
        {
            return;
        }

        animalManager.GenerateAnimal( GetAnimalSpawnPosition() );

        Invoke( "InvokeAPoorPuppy", Random.Range( MinInvokeTime, MaxInvokeTime ) );
    }

    private void InvokeAnInvader()
    {
        if ( !CanInvoke )
        {
            return;
        }

        UFO ufo = Instantiate( Resources.Load( "Prefab/UFO", typeof( UFO )) , GetInvaderSpawnPosition(), Quaternion.identity ) as UFO;
        ufo.Initialize(FoundAnimalToCatch());

        Invoke( "InvokeAnInvader", Random.Range( MinInvokeTime, MaxInvokeTime ) );
    }

    private Vector3 GetAnimalSpawnPosition()
    {
        float ZValue = Random.value < 0.5f ? Random.Range( -offSetZToSpawn, -offSetZNearlyShip ) : Random.Range( offSetZToSpawn, offSetZNearlyShip );

        return new Vector3( offSetXToSpawn, 0, ZValue );
    }

    private Animal FoundAnimalToCatch()
    {
        return null;
    }

    private Vector3 GetInvaderSpawnPosition()
    {
        float ZValue = Random.value < 0.5f ? Random.Range( -offSetZToSpawn, -offSetZNearlyShip ) : Random.Range( offSetZToSpawn, offSetZNearlyShip );

        float XValue = Random.Range(offSetXToSpawn , -offSetXToSpawn); 

        return new Vector3( offSetXToSpawn, 0, ZValue );
    }

    private AnimalManager animalManager;
}