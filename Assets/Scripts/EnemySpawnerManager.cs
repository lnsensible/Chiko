using UnityEngine;
using System.Collections;
public class EnemySpawnerManager : MonoBehaviour 
{
    public int Max_num_of_enemies;
    int enemyNumbers = 0;
    int TotalSpawners;
    public float Spawn_Rate;
    bool startSpawning; // used to START spawning
    bool isSpawning; // used to check if this spawner is creating enemies.

    //Level Setting details
    public float EnemyHealth;
    public int EnemyAttack;
    public int EnemyMoveSpeed;


    // Use this for initialization
	void Start () {

        startSpawning = true;
        isSpawning = false;
        TotalSpawners = transform.childCount;
	}
	
	// Update is called once per frame
 	void Update () {

        //resets the counter for total number of enemies
        enemyNumbers = GameObject.FindGameObjectsWithTag("Enemy").Length;
        
        StartSpawning();
	}

    //can start spawning again.
    void StartSpawning()
    {
        
        if(enemyNumbers < Max_num_of_enemies)
        {
            startSpawning = true;
        }

        if (startSpawning == true && isSpawning == false)
        {
            InvokeRepeating("CallingRandomSpawner", 0, Spawn_Rate);
            startSpawning = false;
            isSpawning = true;
        }
    }

    void CallingRandomSpawner()
    {
        if (enemyNumbers >= Max_num_of_enemies)
        {
            isSpawning = false;
            CancelInvoke("CallingRandomSpawner");
            return;
        }
        //call a random spawner to start
        EnemySpawner child = transform.GetChild(Random.Range(0, 13)).GetComponent<EnemySpawner>();
        //setting the spawner value
        child.Health = EnemyHealth;
        child.Attack = EnemyAttack;
        child.MoveSpeed = EnemyMoveSpeed;
        child.BuildEnemy();
        
    }

}
