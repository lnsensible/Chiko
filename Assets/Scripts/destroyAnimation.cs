using UnityEngine;
using System.Collections;

public class destroyAnimation : MonoBehaviour {

    public bool destroyParent = false;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	    if (!GetComponent<Animation>().isPlaying)
        {
            if (destroyParent)
                Destroy(gameObject.transform.parent.gameObject);
            else
                Destroy(gameObject);
           
                
        }
	}
}
