using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Killingzone : MonoBehaviour {

    private void OnTriggerEnter( Collider other )
    {
        if(other.tag == "Animal")
        {
            Destroy( other.transform.parent.gameObject );
        }
    }
}
