using UnityEngine;
using System.Collections;

public class RadiusScript : MonoBehaviour {

    public float yLevel;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        Vector3 pos = gameObject.transform.position;
        pos.y = yLevel;
        gameObject.transform.position = pos;
	}
}
