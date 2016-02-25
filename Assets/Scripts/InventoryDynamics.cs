using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class InventoryDynamics : MonoBehaviour
{
    public Vector3 initPos;
    Vector3 outOfScreen;

    public GameObject[] chikos;
    public GameObject HangerChiko;

    // Canvas Info
    GameObject canvas;
    RectTransform canvasSize;

    // Hanger Info
    GameObject hanger;
    RectTransform hangerSize;

    // Trap Info
    GameObject[] ChikosTrap;
    Vector3 ChikosTrapInitPos;
    bool showHeldTrap;      //displays trap held by chiko, if any
    bool showInvenTraps;    //shows trap inventory 

    // Scroll view info
    GameObject theScrollView;
    Vector3 theScrollViewInitPos;

    GameObject backButton;
    bool showBackButton;

    // Use this for initialization
    void Start()
    {
        showInvenTraps = false;
        showHeldTrap = true;

        initPos = transform.position;
        outOfScreen = transform.position;
        outOfScreen.x = 5000;

        chikos = GameObject.FindGameObjectsWithTag("ChikoInHanger");
        canvas = GameObject.Find("Canvas");
        canvasSize = canvas.GetComponent<RectTransform>();
        hanger = GameObject.Find("InventoryChikoPrefab");
        hangerSize = hanger.GetComponent<RectTransform>();
        theScrollView = GameObject.Find("Scroll View");
        theScrollViewInitPos = theScrollView.transform.position;

        ChikosTrap = GameObject.FindGameObjectsWithTag("TrapInHanger");

        backButton = GameObject.Find("BackButtonCanvas");
        showBackButton = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (showBackButton == false)
            backButton.SetActive(false);
        else
            backButton.SetActive(true);
        Debug.Log(showBackButton);
    }

    // Detects click on this object
    public void displayChikoTrap()
    {
        foreach (GameObject chiko in chikos)
        {
            chiko.GetComponent<InventoryDynamics>().showBackButton = true;
        }
        // Move other chikos out of view
        MoveOtherChikos();
        // Disable scrollview from scrolling
        

        // Moving of specific hanger to the side
        Vector3 newPosition = transform.position;
        // Set new position.x to middle of screen
        newPosition.x = canvasSize.position.x;
        // Move new position.x to desired position
        newPosition.x -= canvasSize.rect.width * 0.9f;
        transform.position = newPosition;

        
        //Showing displayed hanger's trap inventory
        if (showHeldTrap == true)
        {
            foreach (GameObject trap in ChikosTrap)
            {
                // Set new pos to current pos
                Vector3 thisChikosTrapNewPos = trap.transform.position;
                // Add the x scale of hanger to new pos
                thisChikosTrapNewPos.x += hangerSize.rect.width * 2.4f;
                // Set position to new pos
                trap.transform.position = thisChikosTrapNewPos;
            }
            showHeldTrap = false;
        }
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

    /*public void ResetHanger()
    {
        foreach (GameObject chiko in chikos)
        {
            chiko.transform.position = chiko.GetComponent<InventoryDynamics>().initPos;
        }
        showHeldTrap = true;
        //backButton.SetActive(false);
    }*/
}