using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using Pathfinding;

public class Enemy : MonoBehaviour
{

    GameObject target;
    GameObject OriginalTarget;
    Vector3 dir; //direction to the intended target , can  be ooverrided.
    float distToTarget; // magnitude of the current enemy to the target object;
    //gameplay vairables;
    float health;
    int damage;
    int MOVE_SPEED;
    bool b_move;
    bool b_OverrideMove;
    bool b_AbleToAttack;
    Slider healthBar;

    Path path;
    int currentWaypoint = 0;
    public float distToWayPoint;

    public AnimationClip[] animationList;

    Vector3 vel;//use to move away from other enemies
    float distToCollision; // distance to any other collision

    Animation currentAnimation;

    Transform camPos;
    // Use this for initialization
    void Start()
    {
        health = 100;
        damage = 10;
        MOVE_SPEED = 250;
        healthBar = this.gameObject.transform.GetComponentInChildren<Slider>();
        //InvokeRepeating("minusHealth(2)", 0, 2);
        transform.SetParent(GameObject.Find("Canvas").GetComponent<Transform>());
        transform.position.Set(transform.position.x, transform.position.y + 2, transform.position.z);
        Seeker seeker = GetComponent<Seeker>();
        if (target != null)
            seeker.StartPath(transform.position, target.transform.position, OnPathComplete);

        b_OverrideMove = true;
        currentAnimation = GetComponent<Animation>();
        camPos = GameObject.Find("Main Camera").GetComponent<Transform>();
    }

    public void SetEnemyVariables(float _health, int _damage, int _moveSpeed)
    {
        health = _health;
        damage = _damage;
        MOVE_SPEED = _moveSpeed;
    }
    // Update is called once per frame
    void Update()
    {

        //lock the movement onto the plane only
        vel.y = 0;
        dir.y = 0;

        dir = Vector3.Normalize(transform.position - target.transform.position);
        distToTarget = Vector3.Magnitude(target.transform.position - transform.position);

        if (health <= 0)
        {
            Died();
        }
        else
        {
            if (target == null)
                target = OriginalTarget;


            //update health
            healthBar.value = health * 0.01f;

            healthBar.transform.LookAt(camPos.position);

            //walking || Chasing            
            Moving();

            //carrying out attack
            if (b_AbleToAttack == true)
                Attack();
        }

    }

    public void SetOriginalTarget(GameObject go)
    {
        target = go;
        OriginalTarget = go;
        InvokeRepeating("SetPathing", 0, 2.0f);
        b_move = true;
    }

    void Moving()
    {
        //play walking animation

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
            if (b_move == true)
            {
                currentAnimation.clip = animationList[0];
                currentAnimation[currentAnimation.clip.name].speed = 2;
                currentAnimation.Play();
                //animation.PlayQueued("Enemy_Move");
                transform.LookAt(path.vectorPath[currentWaypoint]);
                transform.position = Vector3.MoveTowards(transform.position, path.vectorPath[currentWaypoint], MOVE_SPEED * Time.deltaTime);
                if (Vector3.Distance(transform.position, path.vectorPath[currentWaypoint]) < distToWayPoint)
                {
                    currentWaypoint++;
                }
            }
            else
            {
                //if (distToCollision < 100)
                transform.position += vel * MOVE_SPEED * Time.deltaTime;
            }
        }
    }

    public void MinusHealth(float h)
    {
        if (health > 0)
            health -= h;
    }

    public void OverrideTarget(GameObject go)
    {
        target = go;
        InvokeRepeating("SetPathing", 0, 2.0f);
        b_move = true;
    }
    void SetPathing()
    {
        Seeker seeker = GetComponent<Seeker>();
        seeker.StartPath(transform.position, target.transform.position, OnPathComplete);
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
        if (currentAnimation.isPlaying == false)
        {
            if (Random.Range(0, 2) == 1)
                currentAnimation.clip = animationList[1];
            else
                currentAnimation.clip = animationList[2];

            currentAnimation[currentAnimation.clip.name].speed = 2;
            currentAnimation.Play();
        }

        //carry out attack;
        Chiko chikoTarget = target.GetComponent<Chiko>();
        if (chikoTarget != null)
        {

        }

        WallScript wallTarget = target.GetComponent<WallScript>();
        if (wallTarget != null)
        {

        }

        Objectives ObjectiveTarget = target.GetComponent<Objectives>();
        if (ObjectiveTarget != null)
        {

        }

    }
    public void Died()
    {
        currentAnimation.clip = animationList[2];
        currentAnimation.Play();

        if (currentAnimation.isPlaying == false)
            Destroy(gameObject);
    }

    public void EnableAttack(bool enable = true)
    {
        b_AbleToAttack = enable;
    }

    void OnTriggerEnter(Collider col)
    {

        if (col.gameObject.tag == "Enemy" && b_OverrideMove == true)
        {
            ////force the enemy to move a set distance away from the other enemies
            vel = Vector3.Normalize(transform.position - col.gameObject.transform.position);
            //transform.position = Vector3.MoveTowards(transform.position, vel, MOVE_SPEED * Time.deltaTime);
            b_move = false;
        }
        if (col.gameObject.tag == "Objective")
        {
            b_AbleToAttack = true;
            b_move = false;
            b_OverrideMove = false;
        }
    }
    void OnTriggerStay(Collider col)
    {
        if (col.gameObject.tag == "Enemy" && b_OverrideMove == true)
        {

            vel = Vector3.Normalize(transform.position - col.gameObject.transform.position);
            //transform.position = Vector3.MoveTowards(transform.position, vel, MOVE_SPEED * Time.deltaTime);
            b_move = false;
        }
        if (col.gameObject.tag == "Objective")
        {
            b_AbleToAttack = true;
            b_move = false;
            b_move = false;
        } 
  
        // check if it is a trap type
        if(col.gameObject.tag == "Trap")
        {
            //check against the name if its a wall or a decoy <!The rest no need to attack/>
            if(col.gameObject.name == "WallTrap(clone)")
            {
                OverrideTarget(col.gameObject);
                b_AbleToAttack = true;
                b_move = false;
                b_move = false;
            }
        }
    }
    void OnTriggerExit(Collider col)
    {
        vel = Vector3.zero;
        b_move = true;
        if (col.gameObject.tag == "Objective")
        {
            b_OverrideMove = false;
            b_AbleToAttack = false;
        }
    }
}
