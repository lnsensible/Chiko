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
        GameObject e = Instantiate(enemySample, spawnPos, Quaternion.identity) as GameObject;
        e.GetComponent<Enemy>().OverrideTarget(Objectivetarget);
        e.GetComponent<Enemy>().SetOriginalTarget(Objectivetarget);
        e.GetComponent<Enemy>().SetEnemyVariables(Health, Attack, MoveSpeed);
        return;
    }
}
