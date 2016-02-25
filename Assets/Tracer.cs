using UnityEngine;
using System.Collections;

public class Tracer : MonoBehaviour {

    public GameObject objChiko;
    public GameObject anchor;

    public float DistFromCenter;
    public float DistToDeRender;

    private Vector3 objChikoPos;
    private Vector3 anchorPos;

	// Use this for initialization
	void Start () {
        objChikoPos = objChiko.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
        if (Vector3.Distance(objChikoPos, gameObject.transform.position) > DistToDeRender)
        {
            gameObject.GetComponent<MeshRenderer>().enabled = true;
            transform.LookAt(objChikoPos);
            transform.Rotate(0, 180, 0);
            transform.position = anchor.transform.position - (transform.forward * DistFromCenter);
        }
        else
        {
            gameObject.GetComponent<MeshRenderer>().enabled = false;
        }
	}
}
