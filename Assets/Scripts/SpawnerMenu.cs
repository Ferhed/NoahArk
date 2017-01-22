using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnerMenu : MonoBehaviour {

    public float offSetXToSpawn = 20.0f;

    public float AnimalMinInvokeTime = 0.3f;
    public float AnimalMaxInvokeTime = .0f;

    public float UFOMinInvokeTime = 10.0f;
    public float UFOMaxInvokeTime = 20.0f;

    private void Start()
    {
        animalManager = AnimalManager.instance;

        Invoke( "InvokeAPoorPuppy", 1.0f );
        Invoke( "InvokeAnInvader", 5.0f );
    }

    private void InvokeAPoorPuppy()
    {
        Vector3[] poss = GetAnimalSpawnPosition();

        GameObject animal = animalManager.GenerateAnimal( poss[ 0 ], poss[ 1 ] );

        animal.GetComponentInChildren<Animal>().speed /= 3.0f;

        Invoke( "InvokeAPoorPuppy", Random.Range( AnimalMinInvokeTime, AnimalMaxInvokeTime ) );
    }

    private void InvokeAnInvader()
    {
        UFO ufo = Instantiate( Resources.Load( "Prefab/UFO", typeof( UFO ) ), GetInvaderSpawnPosition(), Quaternion.identity ) as UFO;
        ufo.Initialize();

        Invoke( "InvokeAnInvader", Random.Range( UFOMinInvokeTime, UFOMaxInvokeTime ) );
    }

    private Vector3 GetInvaderSpawnPosition()
    {
        float ZValue = Random.Range( -2, 8 );

        float XValue = Random.Range( offSetXToSpawn*2, -offSetXToSpawn*2 );

        return new Vector3( XValue, -3.5f, ZValue );
    }

    private Vector3[] GetAnimalSpawnPosition()
    {
        bool isRight = Random.value < 0.5f ? true : false;

        Vector3 start = new Vector3( 0,-3.5f, Random.Range(-2,8) );
        Vector3 end = new Vector3( 0,-3.5f, Random.Range( -2, 8 ) );

        if(isRight)
        {
            start.x = -offSetXToSpawn;
            end.x = offSetXToSpawn;
        }
        else
        {
            start.x = offSetXToSpawn;
            end.x = -offSetXToSpawn;
        }

        return new Vector3[] {start, end };
    }

    private AnimalManager animalManager;
}
