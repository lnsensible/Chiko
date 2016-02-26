using UnityEngine;
using System.Collections;
using UnityEngine.UI;

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
    static public int health;
    static public int damage;
    STATE state;
    TYPE type;

    TRAP trapHeld;

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

    //Selected state
    bool selected;
    float selectedTimer;
    //Follow state
    float followDistance;
    float stopDistance;
    public float followSpeed;
    //Moving to Attack or Place Trap
    Vector3 targetLocation;
    private Transform objectTransfom;

    private float noMovementThreshold = 2.0f;
    private bool isMoving;

    bool shouldPlayerMove;

    GameObject target;
    
    bool ReganHealthPerk;

    Animation ani;

    //Slider healthbar;

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
        maxHealth = 20;
        health = maxHealth;
        damage = 5;
        state = STATE.IDLE;
        followDistance = 200.0f;
        stopDistance = 100.0f;
        followSpeed = 3.0f;
        pos = transform.position;

        shouldPlayerMove = true;

        trapHeld = TRAP.TRIPWIRE;

        if(PlayerPrefs.GetInt("Birth of a Healer") == 1)
        {
            ReganHealthPerk = true;
        }
        else
        {
            ReganHealthPerk = false;
        }
        if(PlayerPrefs.GetInt("Birth of a Berserker") == 1)
        {
            damage += 3;
        }

        //initialise trapHUD
        trapHUD = (GameObject)Instantiate(trapHUD, Vector3.zero, Quaternion.identity);
        trapHUD.transform.parent = gameObject.transform;
        trapHUD.transform.localPosition = new Vector3(0, 2.0f, 0);
        trapHUD.transform.localScale = new Vector3(2.5f, 2.5f, 1.0f);
        trapHUD.transform.LookAt(Camera.main.transform);
        trapHUD.GetComponent<CooldownMeshHandler>().SetMaterial(trapHeld);

        //Animation
        ani = GetComponent<Animation>();
        ani.Stop();

        //healthbar = this.gameObject.transform.GetComponentInChildren<Slider>();
        transform.SetParent(GameObject.Find("Canvas").GetComponent<Transform>());
    }

    // Update is called once per frame
    void Update () {

        pos = transform.position;
        selectedTimer -= Time.deltaTime;

        if (isMoving)
        {
            ani.Play("Move");
        }

        if (state != STATE.DEAD)
        {
            float ratioToFill = 1 / maxHealth;
            //healthbar.value = 1;
        }

        //Debug.Log((transform.position - PlayerMovement.playerPosition).magnitude);
        //Debug.Log(state);
        if (state != STATE.DEAD && ReganHealthPerk == true)
        {
            health += 1;
        }
        switch (state)
        {
            case STATE.IDLE:
                {
                    if (Random.Range(0, 1) == 0)
                        ani.Play("Idle");
                    else
                        ani.Play("Idle2");
                    DestroyRadius();
                    shouldPlayerMove = true;
                    trapHUD.GetComponent<MeshRenderer>().enabled = false;
                    // Switch to follow state when player moves out of range
                    if (Vector3.Distance(pos, PlayerMovement.playerPosition) > followDistance)
                    {
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
                               
                            }
                        }
                        selected = false;
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
                    trapHUD.GetComponent<MeshRenderer>().enabled = false;
                    Dead();
                }
                break;
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
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(PlayerMovement.playerPosition - pos), Time.fixedDeltaTime * 5.0f);
        Vector3 direction = (PlayerMovement.playerPosition - pos).normalized;
        pos += direction * followSpeed;
        transform.position = pos;
    }

    void Attack()
    {
        // Move to target
        Vector3 direction = (targetLocation - pos).normalized;
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(targetLocation - pos), Time.fixedDeltaTime * 5.0f);
        pos += direction * followSpeed;
        transform.position = pos;

        // Check if position is at targeted position
        if (Vector3.Distance(targetLocation, pos) >= noMovementThreshold)
        {
            isMoving = true;
        }
        else
        {
            isMoving = false;
        }
        
        // Stop moving & start attacking enemy
        if (isMoving == false)
        {
            if (Random.Range(0, 2) == 0)
                ani.Play("Attack");
            else if (Random.Range(0, 2) == 1)
                ani.Play("Attack2");
            else
                ani.Play("Attack3");
            target.GetComponent<Enemy>().MinusHealth(1);
            target.GetComponent<Enemy>().OverrideTarget(this.gameObject);
            Debug.Log("Minus health");
            state = STATE.IDLE;
        }
        
        //// if kill enemy
        //    state = STATE.IDLE;
        //// Dead
        if (health <= 0)
            state = STATE.DEAD;
    }

    void PutTrap(Vector3 placeTrapPosition)
    {
        // Move to target
        Vector3 direction = (placeTrapPosition - pos).normalized;
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(targetLocation - pos), Time.fixedDeltaTime * 5.0f);
        pos += direction * followSpeed;
        transform.position = pos;

        // Check if position is at targeted position
        if (Vector3.Distance(placeTrapPosition, pos) >= noMovementThreshold)
        {
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
                    break;
                case TRAP.TRIPWIRE:
                    if (GetComponent<SetTripWire>().PlaceTripwire(placeTrapPosition))
                    {
                        trapPositionHolder2.Set(0, 0, 0);
                        placingTrap = false;
                        DestroyRadius();
                        state = STATE.IDLE;
                        placedFirstTripwire = false;
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
                    break;
                case TRAP.SPIKES:
                    DestroyRadius();
                    state = STATE.IDLE;
                    GetComponent<SpikesScript>().placeSpikes(placeTrapPosition, trapPositionHolder2);
                    trapPositionHolder.Set(0, 0, 0);
                    trapPositionHolder2.Set(0, 0, 0);
                    break;
                case TRAP.DECOY:
                    DestroyRadius();
                    trapPositionHolder.Set(0, 0, 0);
                    GetComponent<DecoyBombScript>().placeDecoy(placeTrapPosition);
                    state = STATE.IDLE;
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
