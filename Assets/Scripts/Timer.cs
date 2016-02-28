﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Timer : MonoBehaviour
{
    private float maxTime;
    public float timeLeft = 30.0f;
    public float PreCountDownTime = 10.0f;
    public GameObject enemySpawnManager;
    EnemySpawnerManager esm;
    Text timer;

    bool b_startWaves;
    // Use this for initialization
    void Start()
    {
        maxTime = timeLeft;
        timer = GetComponent<Text>();
        b_startWaves = false;
        esm = enemySpawnManager.GetComponent<EnemySpawnerManager>();
    }

    // Update is called once per frame
    void Update()
    {
        if (b_startWaves == false)
            PreCountDown();
        else
            CountDown();
    }
    void CountDown()
    {
        timeLeft -= Time.deltaTime;
        if (timeLeft < maxTime * 0.1f)
        {
            GetComponent<Text>().color = Color.red;
        }

        if (timeLeft < 0)
        {
            Application.LoadLevel("Mission Complete");
        }
        timer.text = Mathf.RoundToInt(timeLeft).ToString();
    }
    void PreCountDown()
    {
        PreCountDownTime -= Time.deltaTime;
        if (PreCountDownTime <= 0)
        {
            esm.StartSpawningWaves();
            b_startWaves = true;
        }
        timer.text = "Time left to enemy Spawn:" + Mathf.RoundToInt(PreCountDownTime).ToString();
    }
}
