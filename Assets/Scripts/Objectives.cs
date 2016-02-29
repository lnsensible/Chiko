using UnityEngine;
using System.Collections;

public class Objectives : MonoBehaviour {

    public Vector3[] spawnPositions;
    public Vector3[] spawnRotations;

    public Material[] theMaterials;

    int health;
	// Use this for initialization
	void Start () {
        int f = Random.Range(0, (spawnPositions.Length) - 1);
        transform.position = spawnPositions[f];
        transform.localEulerAngles = spawnRotations[f];

        GameObject themesh = GameObject.Find("objChikoMesh");
        int g = Random.Range(0, (spawnPositions.Length) - 1);
        PlayerPrefs.SetInt("ChikoGained", g);
        themesh.gameObject.GetComponent<Renderer>().material = theMaterials[g];
    }
	
	// Update is called once per frame
	void Update () {
	}

    public void MinusObjectiveHealth(int x)
    {
        health -= x;
    }
}