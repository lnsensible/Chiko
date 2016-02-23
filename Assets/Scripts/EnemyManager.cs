using UnityEngine;
using System.Collections;

public class EnemyManager : MonoBehaviour {

    public GameObject enemySample;
    public GameObject Objectivetarget;
    public int MAX_NUM_OF_ENEMIES;
    public int SPAWNRATE_TIME;
    int counter;
    bool startSpawning;
    bool isSpawning;
	// Use this for initialization
	void Start () {        
        startSpawning = true;
        isSpawning = true;
	}
    
	// Update is called once per frame
	void Update () {
        counter = 0;
        foreach(GameObject go in GameObject.FindGameObjectsWithTag("Enemy"))
        {
            counter += 1;
        }
        if (counter < MAX_NUM_OF_ENEMIES)
            startSpawning = true;
	}
    void StartSpawning()
    {
        if(startSpawning == true)
        {
            InvokeRepeating("BuildEnemy", 0, SPAWNRATE_TIME);
            startSpawning = false;
            isSpawning = true;
        }
    }
    void BuildEnemy()
    {
        if(counter < MAX_NUM_OF_ENEMIES)
        {
            CancelInvoke("BuildEnemy");
            isSpawning = false;
        }

        Vector3 spawnPos;
        spawnPos.x = Random.Range(-1000, 1000);
        spawnPos.z = Random.Range(-1000, 1000);
        spawnPos.y = enemySample.transform.position.y;

        //check for the positions 
        enemySample.GetComponent<Enemy>().OverrideTarget(Objectivetarget);
        Instantiate(enemySample, spawnPos, Quaternion.identity);
        return;
    }
}
