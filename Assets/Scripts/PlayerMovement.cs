using UnityEngine;
using System.Collections;
using Pathfinding;

public class PlayerMovement : MonoBehaviour
{
    // Movement Values
    public float playerSpeed;
    public static Vector3 playerPosition;

    // Movement flags
    public float playerY;
    public Path path;
    private int currentWaypoint = 0;
    public float nextWaypointDistance;

    // Movement conditions
    private bool b_toMove;
    private Vector3 newPosition;
    private const float minDistToMove = 10;
    public LayerMask mask;

    static public bool skipClick;

    private Vector3 collidePos;

    void Start()
    {
        // Initialise values;
        b_toMove = false;

        // 1 - activative , 0 - not active
        if ( PlayerPrefs.GetInt("Birth of a Speedster") == 1)
            playerSpeed = playerSpeed * 2;
    }

    void Update()
    {
        // Input for Mobile Devices. On touch, move to last finger's position.
        for (int i = 0; i < Input.touchCount; i++)
        {
            Touch tmp = Input.GetTouch(Input.touchCount - 1); 
            if (tmp.phase == TouchPhase.Began)
            {
                SetPlayerWaypoint();
                break;
            }
        }

        // Input for PC. On left mouse down, move character.
        if (Input.GetMouseButtonDown(0))
        {
            SetPlayerWaypoint();
        }

        if (b_toMove)
        {
            if (path == null)
            {
                // no path
            }
            else if (currentWaypoint >= path.vectorPath.Count)
            {
                Debug.Log("end of path reached");
            }
            else
            {
                transform.position = Vector3.MoveTowards(transform.position, path.vectorPath[currentWaypoint], playerSpeed * Time.deltaTime);
                if (Vector3.Distance(transform.position, path.vectorPath[currentWaypoint]) < nextWaypointDistance)
                {
                    currentWaypoint++;
                }
            }
        }

        Vector3 pos = new Vector3(gameObject.transform.position.x, playerY, gameObject.transform.position.z);
        transform.position = pos;
        playerPosition = transform.position;
        
    }

    // If ray cast and hits a valid object, and there isn't already a waypoint near there, change waypoint
    void SetPlayerWaypoint()
    {
        bool doMove = true;
        RaycastHit hit;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (Physics.Raycast(ray, out hit, Mathf.Infinity, mask) && (Vector3.Distance(hit.point, newPosition) > minDistToMove)
            && hit.collider.tag == "Movable")
        {
            foreach (GameObject chiko in GameObject.FindGameObjectsWithTag("Chiko"))
            {
                if (chiko.GetComponent<Chiko>().isSelected())
                {
                    doMove = false;
                }
            }

            if (doMove)
            {
              //  if (skipClick)
               //     skipClick = false;
              //  else
              //  {
                Seeker seeker = GetComponent<Seeker>();
                seeker.StartPath(transform.position, hit.point, OnPathComplete);
                    newPosition = hit.point;
                    b_toMove = true;
             //   }
            }
        }
    }

    public void OnPathComplete(Path p)
    {
        Debug.Log("path RETURNED " + p.error);
        if (!p.error)
        {
            path = p;
            currentWaypoint = 0;
        }
    }

    static Vector3 getPlayerPos()
    {
        return playerPosition;
    }
    
    //Don't go into other stuff
    void OnTriggerEnter (Collider col) {
        
        //if (col.gameObject.layer == LayerMask.NameToLayer("World"))
        //{
        //    Debug.Log("Entered world");
        //    transform.position = Vector3.MoveTowards(transform.position, newPosition, -playerSpeed * Time.deltaTime);
        //    b_toMove = false;
        //}
    }

    // I SAID DON'T GO INTO OTHER STUFF
    void OnTriggerStay(Collider other)
    {
       // if (other.gameObject.layer == LayerMask.NameToLayer("World"))
       // {
       //     transform.position = Vector3.MoveTowards(transform.position, newPosition, -playerSpeed * Time.deltaTime);
       // }
    }

}