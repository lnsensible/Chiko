using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using Pathfinding;
using System;

public class Chiko : MonoBehaviour {

    enum STATE
    {
        IDLE,
        FOLLOW,
        SELECTED,
        ATTACK,
        PUTTRAP,
        DEAD,
    };

    enum TYPE
    {
        DEFENSE,
        OFFENSE,
    }

    public enum TRAP
    {
        BEARTRAP,
        TRIPWIRE,
        WALLS,
        SPIKES,
        DECOY,
    }

    Vector3 pos;
    int ID;
    int maxHealth;
    public int health;
    public int damage;
    STATE state;
    TYPE type;

    TRAP trapHeld;
    public float maxtrapCooldown;
    private float trapCooldown;
    public GameObject trapRadius;

    bool placingTrap;

    bool placedFirstTripwire;
    bool placingSpikes;

    Vector3 trapPositionHolder;
    Vector3 trapPositionHolder2;

    //Trap radius
    public int bearTrapRadius;
    public int TripwireRadius;
    public int wallRadius;
    public int spikeRadius;
    public int decoyRadius;

    public GameObject trapHUD;

    float chikoDir;
    Vector3 moveDir;

    // Movement flags
    public Path path;
    private int currentWaypoint = 0;
    public float nextWaypointDistance;
    private bool findingpath;

    //Selected state
    bool selected;
    float selectedTimer;
    //Follow state
    public float followDistance;
    public float stopDistance;
    public float followSpeed;
    //Moving to Attack or Place Trap
    Vector3 targetLocation;
    private Transform objectTransfom;

    public float noMovementThreshold;
    public float noMovementThresholdAttack;
    private bool isMoving;

    bool shouldPlayerMove;

    GameObject target;
    
    bool ReganHealthPerk;

    Animation ani;

    Slider healthbar;
    Transform camPos;

    float timeBetweenAttack;
    bool canAttack;
    bool startAttacking;

    //Let other scripts see if the object is moving
    public bool IsMoving
    {
        get { return isMoving; }
    }

    public TRAP getTrapHeld()
    {
        return trapHeld;
    }

    public bool isSelected()
    {
        return !shouldPlayerMove;
    }

    // Use this for initialization
    void Start () {
        findingpath = false;
        // Set ID based on Chiko's id
        //id = 
        // Set type based on ID
        //type = 
        // Set health and damage based on type and player's level
        //switch (type)
        //{
        //    case TYPE.DEFENSE:
        //        {
        //            health = ;
        //            damage = ;
        //        }
        //        break;
        //    case TYPE.OFFENSE:
        //        {
        //            health = ;
        //            damage = ;
        //        }
        //        break;
        //}
        // Set pos based on player's position
        //pos = ;
        selected = false;

        // Test values
        maxHealth = 100;
        health = maxHealth;
        damage = 1;
        state = STATE.IDLE;
        pos = transform.position;
        isMoving = false;
        targetLocation = PlayerMovement.playerPosition;

        shouldPlayerMove = true;

        noMovementThreshold = 2.0f;
        noMovementThresholdAttack = 200.0f;

    trapHeld = TRAP.WALLS;

        switch (trapHeld)
        {
            case TRAP.BEARTRAP:
                maxtrapCooldown = 10.0f;
                break;
            case TRAP.DECOY:
                maxtrapCooldown = 10.0f;
                break;
            case TRAP.SPIKES:
                maxtrapCooldown = 10.0f;
                break;
            case TRAP.TRIPWIRE:
                maxtrapCooldown = 10.0f;
                break;
            case TRAP.WALLS:
                maxtrapCooldown = 10.0f;
                break;
        }

        trapCooldown = maxtrapCooldown;

        if(PlayerPrefs.GetInt("Birth of a Healer") == 1)
        {
            InvokeRepeating("ActivateSkillPerks", 0, 1);
        }
        else
        {
           damage += damage / 100 * 15;
        }

        if(PlayerPrefs.GetInt("Birth of a Berserker") == 1)
        {
            damage += 3;
        }

        //initialise trapHUD
        trapHUD = (GameObject)Instantiate(trapHUD, Vector3.zero, Quaternion.identity);
        trapHUD.transform.parent = gameObject.transform;
        trapHUD.transform.localPosition = new Vector3(-0, 0.13f, 0);
        trapHUD.transform.localScale = new Vector3(0.1f, 0.1f, 1.0f);
        trapHUD.transform.LookAt(Camera.main.transform);
        trapHUD.transform.Rotate(0, 180, 0);
        trapHUD.GetComponent<CooldownMeshHandler>().SetMaterial(trapHeld);
        trapHUD.GetComponent<MeshRenderer>().enabled = false;

        //Animation
        ani = GetComponent<Animation>();
        ani.Stop();

        healthbar = this.gameObject.transform.GetComponentInChildren<Slider>();
        transform.SetParent(GameObject.Find("Canvas").GetComponent<Transform>());
        camPos = GameObject.Find("Main Camera").GetComponent<Transform>();

        timeBetweenAttack = 0.0f;
        canAttack = true;
        startAttacking = false;
    }

    // Update is called once per frame
    void Update () {

        healthbar.transform.LookAt(camPos.position);

        pos = transform.position;
        selectedTimer -= Time.deltaTime;

        trapCooldown -= Time.deltaTime;

        if (path == null)
        {
            Seeker seeker = GetComponent<Seeker>();
            seeker.StartPath(transform.position, PlayerMovement.playerPosition, OnPathComplete);
            Debug.Log("wtf");
        }

        if (isMoving)
        {
            if (!GetComponent<AudioSource>().isPlaying)
            {
                GetComponent<AudioSource>().Play();
            }
            ani.Play("Move");
        }

        if (state != STATE.DEAD)
        {
            float ratioToFill = 1 / maxHealth;
            //healthbar.value = health * ratioToFill;
        }

        if (state != STATE.DEAD && ReganHealthPerk == true)
        {
            health += 1;
        }
        switch (state)
        {
            case STATE.IDLE:
                {
                    if (GetComponent<AudioSource>().isPlaying)
                    {
                        GetComponent<AudioSource>().Stop();
                    }
                    if (UnityEngine.Random.Range(0, 1) == 0)
                        ani.Play("Idle");
                    else
                        ani.Play("Idle2");
                    DestroyRadius();
                    shouldPlayerMove = true;
                    trapHUD.GetComponent<MeshRenderer>().enabled = false;
                    // Switch to follow state when player moves out of range
                    if (Vector3.Distance(pos, PlayerMovement.playerPosition) > followDistance || path == null)
                    {
                        Seeker seeker = GetComponent<Seeker>();
                        seeker.StartPath(transform.position, PlayerMovement.playerPosition, OnPathComplete);
                        state = STATE.FOLLOW;
                    }
                }
                break;

            case STATE.FOLLOW:
                { 
                    ani.Play("Move");
                    trapHUD.GetComponent<MeshRenderer>().enabled = false;
                    Follow();

                    // Switch back to idle state
                    if ((Vector3.Distance(pos, PlayerMovement.playerPosition) <= stopDistance))
                    {
                        state = STATE.IDLE;
                    }
                }
                break;

            case STATE.SELECTED:
                {
                    trapHUD.GetComponent<CooldownMeshHandler>().SetAlpha(maxtrapCooldown-trapCooldown, maxtrapCooldown);
                    trapHUD.GetComponent<MeshRenderer>().enabled = true;

                    shouldPlayerMove = false;

                        if ((Input.GetMouseButtonDown(0) || (Input.touchCount == 1 && Input.GetTouch(0).phase == TouchPhase.Began)) && selectedTimer <= 0)
                        {
                            RaycastHit hit;
                            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                            if (Physics.Raycast(ray, out hit))
                            {
                                targetLocation = hit.point;

                                // if click enemy, attack
                                if (hit.collider.tag == "Enemy" && !placingTrap)
                                {
                                    state = STATE.ATTACK;
                                    target = hit.collider.gameObject;
                                }
                                // if select self, unselect
                                else if (hit.collider.gameObject == this.gameObject)
                                {
                                    state = STATE.IDLE;
                                }
                                // if click on other chiko, change selected chiko
                                else if (hit.collider.tag == "MyChiko")
                                {
                                    state = STATE.IDLE;
                                }

                                // if click ground, put trap
                                else
                                {
                                    if (Vector3.Distance(hit.point, gameObject.transform.position) < GetTrapPlaceDistance())
                                    {
                                        if (trapCooldown < 0)
                                        {
                                            PlayerMovement.skipClick = true;
                                            switch (trapHeld)
                                            {
                                                case TRAP.BEARTRAP:
                                                    trapPositionHolder = targetLocation;
                                                    placingTrap = true;
                                                    state = STATE.PUTTRAP;
                                                    break;

                                                case TRAP.TRIPWIRE:
                                                    if (trapPositionHolder == Vector3.zero)
                                                    {
                                                        trapPositionHolder = targetLocation;
                                                    }
                                                    else
                                                    {
                                                        trapPositionHolder2 = targetLocation;
                                                        placingTrap = true;
                                                        state = STATE.PUTTRAP;
                                                    }
                                                    break;
                                                case TRAP.WALLS:
                                                    trapPositionHolder = targetLocation;
                                                    placingTrap = true;
                                                    state = STATE.PUTTRAP;
                                                    break;
                                                case TRAP.SPIKES:
                                                    trapPositionHolder = targetLocation;
                                                    placingTrap = true;
                                                    placingSpikes = true;
                                                    state = STATE.PUTTRAP;
                                                    break;
                                                case TRAP.DECOY:
                                                    trapPositionHolder = targetLocation;
                                                    placingTrap = true;
                                                    state = STATE.PUTTRAP;
                                                    break;
                                            }
                                        }
                                        else 
                                        {
                                            state = STATE.IDLE;
                                            selected = false;
                                        }
                                    }
                                    else 
                                    {
                                        state = STATE.IDLE;
                                        selected = false;
                                    }
                                }
                        }
                    }
                }
                break;

            case STATE.ATTACK:
                {
                    trapHUD.GetComponent<MeshRenderer>().enabled = false;
                    Attack();
                }
                break;

            case STATE.PUTTRAP:
                {
                    trapHUD.GetComponent<MeshRenderer>().enabled = false;
                    switch (trapHeld)
                    {
                        case TRAP.BEARTRAP:
                            shouldPlayerMove = true;
                            PutTrap(trapPositionHolder);
                            break;
                        case TRAP.TRIPWIRE:
                            shouldPlayerMove = true;

                            if (placedFirstTripwire)
                                PutTrap(trapPositionHolder2);
                            else
                                PutTrap(trapPositionHolder);
                            break;
                        case TRAP.WALLS:
                            shouldPlayerMove = true;
                            PutTrap(trapPositionHolder);
                            break;
                        case TRAP.SPIKES:
                            if (placingSpikes && trapPositionHolder2 == Vector3.zero)
                            {
                                if (Input.GetMouseButtonUp(0) || (Input.touchCount > 0 && Input.GetTouch(Input.touchCount - 1).phase == TouchPhase.Ended))
                                {
                                    RaycastHit hit;
                                    Ray ray;

                                    if (Input.touchCount > 0)
                                        ray = Camera.main.ScreenPointToRay(Input.GetTouch(Input.touchCount - 1).position);
                                    else
                                        ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                                    
                                    if (Physics.Raycast(ray, out hit))
                                    {
                                        trapPositionHolder2 = hit.point;

                                        Debug.Log(trapPositionHolder);
                                        Debug.Log(trapPositionHolder2);
                                    }
                                }
                            }

                            if (trapPositionHolder2 != Vector3.zero)
                            {
                                shouldPlayerMove = true;
                                PutTrap(trapPositionHolder);
                            }
                            break;
                        case TRAP.DECOY:
                            shouldPlayerMove = true;
                            PutTrap(trapPositionHolder);
                            break;
                    }
                }
                break;

            case STATE.DEAD:
                {
                    if (GetComponent<AudioSource>().isPlaying)
                    {
                        GetComponent<AudioSource>().Stop();
                    }
                    trapHUD.GetComponent<MeshRenderer>().enabled = false;
                    Dead();
                }
                break;
        }

        Vector3 lockRotation = transform.eulerAngles;
        lockRotation.x = 0;
        lockRotation.z = 0;
        transform.eulerAngles = lockRotation;
    }

    public void OnPathComplete(Path p)
    {
        //Debug.Log("path RETURNED " + p.error);
        if (!p.error)
        {
            findingpath = false;
            path = p;
            currentWaypoint = 0;
        }
    }

    // Detects click on this object
    void OnMouseDown()
    {
       if (selected)
        {
            selected = false;
            state = STATE.IDLE;
        }

        else
        {
            selected = true;
            ani.Stop();
            state = STATE.SELECTED;
            selectedTimer = 0.25f;
           
           //render radius
            GameObject clone = (GameObject)Instantiate(trapRadius, transform.position, Quaternion.identity);
           switch (trapHeld)
           {
               case TRAP.BEARTRAP:
                   clone.transform.localScale = new Vector3(bearTrapRadius, 2, bearTrapRadius);
                   break;
               case TRAP.TRIPWIRE:
                   clone.transform.localScale = new Vector3(TripwireRadius, 2, TripwireRadius);
                   break;
               case TRAP.WALLS:
                   clone.transform.localScale = new Vector3(wallRadius, 2, wallRadius);
                   break;
               case TRAP.SPIKES:
                   clone.transform.localScale = new Vector3(spikeRadius, 2, spikeRadius);
                   break;
               case TRAP.DECOY:
                   clone.transform.localScale = new Vector3(decoyRadius, 2, decoyRadius);
                   break;
           }
            
            clone.GetComponent<RadiusOwner>().setOwner(ID);
        }
    }

    void Follow()
    {
        Debug.Log("follow");
        if (path == null)
        {
            //Seeker seeker = GetComponent<Seeker>();
            //seeker.StartPath(transform.position, PlayerMovement.playerPosition, OnPathComplete);
        }
        else if (currentWaypoint >= path.vectorPath.Count)
        {
            if (!findingpath)
            {
                Seeker seeker = GetComponent<Seeker>();
                seeker.StartPath(transform.position, PlayerMovement.playerPosition, OnPathComplete);
                findingpath = true;
            }
            else
                Debug.Log("end of path reached");
        }
        else
        {
            if (!GetComponent<AudioSource>().isPlaying)
            {
                GetComponent<AudioSource>().Play();
            }

            transform.position = Vector3.MoveTowards(transform.position, path.vectorPath[currentWaypoint], followSpeed * Time.deltaTime);
            transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(PlayerMovement.playerPosition - pos), Time.fixedDeltaTime * 5.0f);
            if (Vector3.Distance(transform.position, path.vectorPath[currentWaypoint]) < nextWaypointDistance)
            {
                currentWaypoint++;
            }
        }
    }

    void Attack()
    {
        Vector3 direction = (target.transform.position - pos).normalized;
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(target.transform.position - pos), Time.fixedDeltaTime * 5.0f);
        if (Vector3.Distance(target.transform.position, pos) >= noMovementThresholdAttack)
        {
            if (!GetComponent<AudioSource>().isPlaying)
            {
                GetComponent<AudioSource>().Play();
            }

            // Move to target
            pos += direction * followSpeed * Time.deltaTime;
            transform.position = pos;
            isMoving = true;
        }
        else
        {
            isMoving = false;
            startAttacking = true;
        }

        // Stop moving & start attacking enemy
        if (startAttacking == true)
        {
            // Look at target
            Vector3 targetVector = (target.transform.position - transform.position);
            targetVector = new Vector3(targetVector.x, 0, targetVector.z);
            transform.rotation = Quaternion.LookRotation(targetVector);

            // Play attack animation
            if (UnityEngine.Random.Range(0, 1) == 0)
                ani.Play("Attack");
            //else if (Random.Range(0, 2) == 1)
            //    ani.Play("Attack2");
            else
                ani.Play("Attack3");

            
            // Damage calculations
            target.GetComponent<Enemy>().MinusHealth(damage);
            target.GetComponent<Enemy>().OverrideTarget(this.gameObject);
            Debug.Log("Minus health");

            // Special cases
            if (target.GetComponent<Enemy>().health <= 0)
            {
                startAttacking = false;
                state = STATE.IDLE;
            }
            // Dead
            if (health <= 0)
            {
                startAttacking = false;
                state = STATE.DEAD;
            }
        }
    }

    void PutTrap(Vector3 placeTrapPosition)
    {
        // Move to target
        Vector3 direction = (placeTrapPosition - pos).normalized;
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(targetLocation - pos), Time.fixedDeltaTime * 5.0f);
        pos += direction * followSpeed * Time.deltaTime;
        transform.position = pos;

        // Check if position is at targeted position
        if (Vector3.Distance(placeTrapPosition, pos) >= noMovementThreshold)
        {
            if (GetComponent<AudioSource>().isPlaying)
            {
                GetComponent<AudioSource>().Stop();
            }
            isMoving = true;
        }
        else
        {
            isMoving = false;
        }
        
        // Stop moving & place trap
        if (isMoving == false)
        {
            switch (trapHeld)
            {
                case TRAP.BEARTRAP:
                    DestroyRadius();
                    trapPositionHolder.Set(0, 0, 0);
                    GetComponent<BearTrapScript>().placeBearTrap(placeTrapPosition);
                    state = STATE.IDLE;
                    trapCooldown = maxtrapCooldown;
                    break;
                case TRAP.TRIPWIRE:
                    if (GetComponent<SetTripWire>().PlaceTripwire(placeTrapPosition))
                    {
                        trapPositionHolder2.Set(0, 0, 0);
                        placingTrap = false;
                        DestroyRadius();
                        state = STATE.IDLE;
                        placedFirstTripwire = false;
                        trapCooldown = maxtrapCooldown;
                    }
                    else
                    {
                        trapPositionHolder.Set(0, 0, 0);
                        placedFirstTripwire = true;
                    }
                    break;
                case TRAP.WALLS:
                    DestroyRadius();
                    state = STATE.IDLE;
                    GetComponent<WallScript>().placeWall(placeTrapPosition, chikoDir-90);
                    trapPositionHolder.Set(0, 0, 0);
                    trapCooldown = maxtrapCooldown;
                    break;
                case TRAP.SPIKES:
                    DestroyRadius();
                    state = STATE.IDLE;
                    GetComponent<SpikesScript>().placeSpikes(placeTrapPosition, trapPositionHolder2);
                    trapPositionHolder.Set(0, 0, 0);
                    trapPositionHolder2.Set(0, 0, 0);
                    trapCooldown = maxtrapCooldown;
                    break;
                case TRAP.DECOY:
                    DestroyRadius();
                    trapPositionHolder.Set(0, 0, 0);
                    GetComponent<DecoyBombScript>().placeDecoy(placeTrapPosition);
                    state = STATE.IDLE;
                    trapCooldown = maxtrapCooldown;
                    break;
            }

            
        }
        //// After putting a trap
        //state = STATE.IDLE;
    }

    void Dead()
    {
        for (int i = 0; i < PlayerInventory.SelectedChiko.Length; i++)
        {
            if (ID == PlayerInventory.SelectedChiko[i])
            {
                PlayerInventory.SelectedChiko[i] = -1;
                Destroy(this.gameObject);
            }
        }
    }

    int GetTrapPlaceDistance()
    {
        switch (trapHeld)
        {
            case TRAP.BEARTRAP:
                return bearTrapRadius/2;
            case TRAP.TRIPWIRE:
                return TripwireRadius/2;
            case TRAP.WALLS:
                return wallRadius / 2;
            case TRAP.SPIKES:
                return spikeRadius / 2;
            case TRAP.DECOY:
                return decoyRadius / 2;
        }
        return 0;
    }

    void DestroyRadius()
    {
        foreach (GameObject clone in GameObject.FindGameObjectsWithTag("TrapRadius"))
        {
            if (clone.GetComponent<RadiusOwner>().getOwner() == ID)
            {
                Destroy(clone);
            }
        }
    }
}
