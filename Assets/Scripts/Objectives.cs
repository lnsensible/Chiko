using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Objectives : MonoBehaviour {

    public Vector3[] spawnPositions;
    public Vector3[] spawnRotations;

    public Material[] theMaterials;

    public int health;
    public Slider healthBar;
    GameObject CAM;
	// Use this for initialization
	void Start () {
        gameObject.transform.SetParent(GameObject.Find("Canvas").transform);

        int f = Random.Range(0, (spawnPositions.Length) - 1);
        transform.position = spawnPositions[f];
        transform.localEulerAngles = spawnRotations[f];

        GameObject themesh = GameObject.Find("objChikoMesh");
        int g = Random.Range(0, 28 - 1);
        PlayerPrefs.SetInt("ChikoGained", g);
        themesh.gameObject.GetComponent<Renderer>().material = theMaterials[g];

        CAM = GameObject.FindGameObjectsWithTag("MainCamera")[0];
    }
	
	// Update is called once per frame
	void Update () {
        if(health <= 0)
        {
            Application.LoadLevel("Mission Fail");
        }
        else
        {
            float ratio =  100 / health;
            healthBar.value = ( health * ratio );

            healthBar.transform.LookAt(CAM.transform);
        }
	}

    public void MinusObjectiveHealth(int x)
    {
        health -= x;
    }
}