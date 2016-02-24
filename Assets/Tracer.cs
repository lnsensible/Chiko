using UnityEngine;
using System.Collections;

public class Tracer : MonoBehaviour {

    public GameObject objChiko;
    public GameObject anchor;

    public float DistFromCenter;

    private Vector3 objChikoPos;
    private Vector3 anchorPos;

	// Use this for initialization
	void Start () {
        objChikoPos = objChiko.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
        transform.eulerAngles = new Vector3(0, Vector3.Angle(objChikoPos, transform.position)-180, 0);
        transform.position = anchor.transform.position - (transform.forward * DistFromCenter);
	}
}
