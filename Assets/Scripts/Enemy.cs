﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using Pathfinding;

public class Enemy : MonoBehaviour {

    public GameObject target;
    Vector3 dir; //direction to the intended target , can  be ooverrided.
    float distToTarget; // magnitude of the current enemy to the target object;
    // Use this for initialization
    //gameplay vairables;
    int health;
    int damage;
    int MOVE_SPEED;
    bool b_move;
    Slider healthBar;

    Path path;
    int currentWaypoint = 0;
    public float distToWayPoint;
    Vector3 vel;//use to move away from other enemies
	// Use this for initialization
	void Start () {
        health = 100;
        damage = 10;
        MOVE_SPEED = 250;
        healthBar = this.gameObject.transform.GetComponentInChildren<Slider>();
        //InvokeRepeating("minusHealth(2)", 0, 2);
        transform.SetParent(GameObject.Find("Canvas").GetComponent<Transform>());
        Seeker seeker = GetComponent<Seeker>();
        seeker.StartPath(transform.position, PlayerMovement.playerPosition, OnPathComplete);
        InvokeRepeating("SetPathing", 0, 2.0f);
        b_move = true;
	}   

	public void SetEnemyVariables(int _health, int _damage, int _moveSpeed)
    {
        health = _health;
        damage = _damage;
        MOVE_SPEED = _moveSpeed;
    }
	// Update is called once per frame
	void Update () {
        
        dir = Vector3.Normalize(transform.position - target.transform.position);
        distToTarget = Vector3.Magnitude(target.transform.position - transform.position);
        
        //moving to next waypoint
        if (path == null)
        {
            // no path
            transform.position -= dir * MOVE_SPEED * Time.deltaTime;//move backwards until got path

        }
        else if (currentWaypoint >= path.vectorPath.Count)
        {
            //Debug.Log("end of path reached");
        }
        else
        {
            if(b_move == true)
            {
                transform.position = Vector3.MoveTowards(transform.position, path.vectorPath[currentWaypoint], MOVE_SPEED * Time.deltaTime);
                if (Vector3.Distance(transform.position, path.vectorPath[currentWaypoint]) < distToWayPoint)
                {
                    currentWaypoint++;
                }
            }
            else
            {
                transform.position += vel * MOVE_SPEED * Time.deltaTime;
            }
        }

        if (health <= 0)
            Died();

        healthBar.value = health * 0.01f;
	}
    public void MinusHealth(int h)
    {
        if (health > 0)
            health -= h;
    }
    public void OverrideTarget(GameObject go)
    {
        target = go;
        
    }

    void SetPathing()
    {
        Seeker seeker = GetComponent<Seeker>();
        seeker.StartPath(transform.position, PlayerMovement.playerPosition, OnPathComplete);
    }

    public void OnPathComplete(Path p)
    {
        if (!p.error)
        {
            path = p;
            currentWaypoint = 0;
        }
    }
    public void OverrideMoveSpeed(int MS)
    {
        MOVE_SPEED = MS;
    }
    void Attack()
    {
        if(distToTarget <= 50)
        {
            //carry out attack;
        }
    }
    public void Died()
    {
        Destroy(gameObject);
    }
   
    void OnTriggerEnter(Collider col)
    {
        
        if(col.gameObject.tag == "Enemy")
        {
            vel = Vector3.Normalize(transform.position - col.gameObject.transform.position);
            b_move = false;
        }
    }
    void OnTriggerStay(Collider col)
    {
        if (col.gameObject.tag == "Enemy")
        {
            vel = Vector3.Normalize(transform.position - col.gameObject.transform.position);
            b_move = false;
        }
    }
    void OnTriggerExit(Collider col)
    {
        vel = Vector3.zero;
        b_move = true;
    }
}
