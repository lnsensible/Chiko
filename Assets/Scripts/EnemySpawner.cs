using UnityEngine;
using System.Collections;

public class EnemySpawner : MonoBehaviour {

    public GameObject enemySample;
    public GameObject Objectivetarget;

    //enemy variables
    public float Health;
    public int Attack;
    public int MoveSpeed;

    public void BuildEnemy()
    {
        Vector3 spawnPos = transform.position;

        //check for the positions 
        enemySample.GetComponent<Enemy>().OverrideTarget(Objectivetarget);
        enemySample.GetComponent<Enemy>().SetEnemyVariables(Health, Attack, MoveSpeed);
        Instantiate(enemySample, spawnPos, Quaternion.identity);
        return;
    }
}
