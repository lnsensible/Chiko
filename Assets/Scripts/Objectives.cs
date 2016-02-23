using UnityEngine;
using System.Collections;

public class Objectives : MonoBehaviour {

    int health;
	// Use this for initialization
	void Start () {
        Vector3 position = new Vector3(Random.Range(-300, 300), -212, Random.Range(-300, 300));
        transform.position = position;
    }
	
	// Update is called once per frame
	void Update () {
	}
}