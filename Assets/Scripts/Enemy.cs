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
    public float health;
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

    public AudioClip[] clipList;

    Vector3 vel;//use to move away from other enemies
    float distToCollision; // distance to any other collision

    Animation currentAnimation;

    Transform camPos;

    AudioSource audiSource;
    // Use this for initialization
    void Start()
    {
        health = 100;
        damage = 1;
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
        audiSource = GetComponent<AudioSource>();

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
        if (target == null)
            target = OriginalTarget;

        //lock the movement onto the plane only
        vel.y = 0;
        dir.y = 0;       

        if (path != null && currentWaypoint < path.vectorPath.Count)
        {
            dir = Vector3.Normalize(path.vectorPath[currentWaypoint] - this.transform.position);
        }
        //distToTarget = Vector3.Magnitude(target.transform.position - transform.position);

        if (health <= 0)
        {
            Died();
        }
        else
        {
            //update health
            healthBar.value = health * 0.01f;

            healthBar.transform.LookAt(camPos.position);

            //walking || Chasing    
            if(b_OverrideMove == true)
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
                audiSource.clip = clipList[0];
                audiSource.Play();

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
        if(audiSource.isPlaying == false)
        {
            audiSource.clip = clipList[2];
            audiSource.Play();
        }
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
            {
                currentAnimation.clip = animationList[1];
                currentAnimation[currentAnimation.clip.name].speed = 4;
            }
            else
            {
                currentAnimation.clip = animationList[2];
                currentAnimation[currentAnimation.clip.name].speed = 2;

            }
            currentAnimation.Play();
            if(currentAnimation.isPlaying == true)
            {
                audiSource.clip = clipList[1];
                audiSource.Play();
            }
        }

        //carry out attack;
        Chiko chikoTarget = target.GetComponent<Chiko>();
        if (chikoTarget != null)
        {
            chikoTarget.health -= damage;
        }

        WallScript wallTarget = target.GetComponent<WallScript>();
        if (wallTarget != null)
        {
            wallTarget.theHealth -= damage;
        }

        Objectives ObjectiveTarget = target.GetComponent<Objectives>();
        if (ObjectiveTarget != null)
        {
            ObjectiveTarget.MinusObjectiveHealth(damage);
        }

    }
    public void Died()
    {
        b_OverrideMove = false;

        currentAnimation.clip = animationList[3];
        
         if(currentAnimation.isPlaying == false)
         {
            currentAnimation.Play();
            Invoke("DestroyGameObject", currentAnimation.clip.length - 0.002f);
         }

    }

    void DestroyGameObject()
    {
        Destroy(gameObject);
    }

    public void EnableAttack(bool enable = true)
    {
        b_AbleToAttack = enable;
    }

    void OnTriggerEnter(Collider col)
    {
        if(col.gameObject == target)
        {
            b_AbleToAttack = true;
            b_move = false;
            b_OverrideMove = false;
        }

        if (col.gameObject.tag == "Enemy" && b_OverrideMove == true)
        {
            ////force the enemy to move a set distance away from the other enemies
            //vel = Vector3.Normalize(transform.position - col.gameObject.transform.position);
            //transform.position = Vector3.MoveTowards(transform.position, vel, MOVE_SPEED * Time.deltaTime);

            Vector3 colDir = col.gameObject.GetComponent<Enemy>().dir;
            Vector3 colPosScalar = new Vector3(col.gameObject.transform.position.x / colDir.x, col.gameObject.transform.position.y / colDir.y, col.gameObject.transform.position.z / colDir.z);
            Vector3 PosScalar = new Vector3(transform.position.x / dir.x, transform.position.y / dir.y, transform.position.z / dir.z);
            if (!biggerorEqualThan(colPosScalar, PosScalar))
            {
                b_OverrideMove = false;
                b_move = false;
            }
        }
    }

    bool biggerorEqualThan(Vector3 lhs, Vector3 rhs)
    {
        if (lhs.x >= rhs.x &&   lhs.y >= rhs.y && lhs.z >= rhs.z)
            return true;
        return false;

    }

    void OnTriggerStay(Collider col)
    {
        if (col.gameObject == target)
        {
            b_AbleToAttack = true;
            b_move = false;
            b_OverrideMove = false;
        }

        if (col.gameObject.tag == "Enemy" && b_OverrideMove == true)
        {
            //vel = Vector3.Normalize(transform.position - col.gameObject.transform.position);
            //transform.position = Vector3.MoveTowards(transform.position, vel, MOVE_SPEED * Time.deltaTime);
            Vector3 colDir = col.gameObject.GetComponent<Enemy>().dir;
            Vector3 colPosScalar = new Vector3(col.gameObject.transform.position.x / colDir.x, col.gameObject.transform.position.y / colDir.y, col.gameObject.transform.position.z / colDir.z);
            Vector3 PosScalar = new Vector3(transform.position.x / dir.x, transform.position.y / dir.y, transform.position.z / dir.z);
            if (!biggerorEqualThan(colPosScalar, PosScalar))
            {
                b_OverrideMove = false;
                b_move = false;
            }
            
            
        }
    }
    void OnTriggerExit(Collider col)
    {
        vel = Vector3.zero;
        b_move = true;
        b_OverrideMove = true;
        b_AbleToAttack = false;
       
    }
}
