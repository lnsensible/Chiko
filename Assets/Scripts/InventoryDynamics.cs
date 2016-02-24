using UnityEngine;
using System.Collections;

public class InventoryDynamics : MonoBehaviour
{

    bool showInvenTraps;    //shows invent
    float heldDownTimer;
    bool startTimer;       
    bool showHeldTrap;      //displays trap held by chiko, if any

    public Vector3 initPos;
    Vector3 outOfScreen;

    public GameObject[] chikos;

    public GameObject HangerChiko;
    GameObject canvas;
    RectTransform canvasSize;
    GameObject hanger;
    RectTransform hangerSize;
    GameObject thisChikosTrap;
    RectTransform thisChikosTrapPos;
    Vector3 thisChikosTrapInitPos;
 

    // Use this for initialization
    void Start()
    {
        showInvenTraps = false;
        heldDownTimer = 0;
        startTimer = false;
        showHeldTrap = false;

        initPos = transform.position;
        outOfScreen = transform.position;
        outOfScreen.x = 5000;

        chikos = GameObject.FindGameObjectsWithTag("ChikoInHanger");
        canvas = GameObject.Find("Canvas");
        canvasSize = canvas.GetComponent<RectTransform>();
        hanger = GameObject.Find("InventoryChikoPrefab");
        hangerSize = hanger.GetComponent<RectTransform>();
        thisChikosTrap = GameObject.Find("Trap");
        thisChikosTrapPos = thisChikosTrap.GetComponent<RectTransform>();
        thisChikosTrapInitPos = thisChikosTrapPos.position;
    }

    // Update is called once per frame
    void Update()
    {

        if (startTimer == true)
        {
            heldDownTimer += Time.deltaTime;
            if (heldDownTimer > 5)
            {
                showInvenTraps = true;
                startTimer = false;
            }
        }
    }

    // Detects click on this object
    public void displayChikoTrap()
    {
        //MoveOtherChikos();

        // Moving of specific hanger to the side
        Vector3 newPosition = transform.position;
        // Set new position.x to middle of screen
        newPosition.x = canvasSize.position.x;
        // Move new position.x to desired position
        newPosition.x -= canvasSize.rect.width * 0.9f;
        transform.position = newPosition;

        //Showing displayed hanger's trap inventory
        // Set new pos to current pos
        Vector3 thisChikosTrapNewPos = thisChikosTrapPos.position;
        // Add the x scale of hanger to new pos
        thisChikosTrapNewPos.x += hangerSize.rect.width * 2.4f;
        // Set position to new pos
        thisChikosTrapPos.position = thisChikosTrapNewPos;

        heldDownTimer = 0;
        showHeldTrap = true;
    }

    public void displayTrapInventory()
    {
        if (showInvenTraps)
        {
            Vector3 pos = transform.position;
            pos.x += canvasSize.position.x;
            transform.position = pos;
            showInvenTraps = false;
        }
        else
        {
            Vector3 pos = transform.position;
            pos.x -= canvasSize.position.x;
            transform.position = pos;
            showInvenTraps = true;
        }
    }

    void MoveOtherChikos()
    {
        foreach (GameObject chiko in chikos)
        {
            if (chiko.gameObject != this.gameObject)
                chiko.transform.position += outOfScreen;
        }
    }

    public void ResetHanger()
    {
        foreach (GameObject chiko in chikos)
        {
            chiko.transform.position = chiko.GetComponent<InventoryDynamics>().initPos;
        }
    }
}