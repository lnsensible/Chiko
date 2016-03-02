using UnityEngine;
using System.Collections;
public class EnemySpawnerManager : MonoBehaviour
{
    public int Max_num_of_enemies_per_level;
    int Max_num_of_enemies_;
    int enemyNumbers = 0;
    int TotalSpawners;
    public float Spawn_Rate;
    bool b_GameStart;
    bool startSpawning; // used to START spawning
    bool isSpawning; // used to check if this spawner is creating enemies.

    //Level Setting details
    public float EnemyHealth;
    public int EnemyAttack;
    public int EnemyMoveSpeed;


    // Use this for initialization
    void Start()
    {
        Max_num_of_enemies_ = Max_num_of_enemies_per_level * (PlayerPrefs.GetInt("rank") + 1);
        startSpawning = false;
        isSpawning = false;
        TotalSpawners = transform.childCount;
    }

    public void StartSpawningWaves()
    {
        b_GameStart = true;
    }

    // Update is called once per frame
    void Update()
    {

        //resets the counter for total number of enemies
        enemyNumbers = GameObject.FindGameObjectsWithTag("Enemy").Length;

        StartSpawning();
    }

    //can start spawning again.
    void StartSpawning()
    {
        if (b_GameStart == true)
        {
            if (enemyNumbers < Max_num_of_enemies_)
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
    }

    void CallingRandomSpawner()
    {
        if (enemyNumbers >= Max_num_of_enemies_)
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
