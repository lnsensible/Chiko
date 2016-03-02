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
    GameObject[] invTrap;
    Vector3 ChikosTrapInitPos;
    bool showHeldTrap;      //displays trap held by chiko, if any
    bool showInvenTraps;    //shows trap inventory 

    // Scroll view info
    GameObject theScrollView;
    Vector3 theScrollViewInitPos;
    bool lockScrollView;

    GameObject trapScrollView;

    GameObject backButton;
    bool showBackButton;

    bool isSelected;

    bool selectedChikoListFull;

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
        trapScrollView = GameObject.Find("TrapScrollView");

        ChikosTrap = GameObject.FindGameObjectsWithTag("TrapInHanger");
        invTrap = GameObject.FindGameObjectsWithTag("InventoryTrap");

        backButton = GameObject.Find("BackButtonCanvas");
        showBackButton = false;

        isSelected = false;

        lockScrollView = false;

        selectedChikoListFull = false;
    }

    // Update is called once per frame
    void Update()
    {
        foreach (GameObject chiko in chikos)
        {
            if (chiko.GetComponent<InventoryDynamics>().showBackButton == true)
            {
                backButton.SetActive(true);
            }
            else
            {
                backButton.SetActive(false);
            }
        }
        if (lockScrollView == true)
            theScrollView.GetComponent<ScrollRect>().movementType = ScrollRect.MovementType.Clamped;
    }

    // Detects click on this object
    public void displayChikoTrap()
    {
        foreach (GameObject chiko in chikos)
        {
            chiko.GetComponent<InventoryDynamics>().showBackButton = true;
        }

        //Only for this game object
        isSelected = true;
        // Move other chikos out of view
        MoveOtherChikos();
        // Disable scrollview from scrolling
        lockScrollView = true;

        // Moving of specific hanger to the side
        Vector3 newPosition = transform.position;
        // Set new position.x to middle of screen
        newPosition.x = canvasSize.position.x;
        // Move new position.x to desired position
        newPosition.x -= canvasSize.rect.width * 1.1f;
        transform.position = newPosition;


        //Showing displayed hanger's trap inventory
        if (showHeldTrap == true)
        {
            foreach (GameObject trap in ChikosTrap)
            {
                // Set new pos to current pos
                Vector3 thisChikosTrapNewPos = trap.transform.position;
                // Add the x scale of hanger to new pos
                thisChikosTrapNewPos.x += hangerSize.rect.width * 3.80f;
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

    public void AddTrapToChiko()
    {
        foreach (GameObject chiko in chikos)
        {
            // The chiko that is being shown
            if (chiko.GetComponent<InventoryDynamics>().isSelected == true)
            {
                foreach (GameObject trap in invTrap)
                {
                    trap.SetActive(true);
                }
                // if trap is equipped
                if (this.gameObject.transform.parent != chiko.gameObject.transform.GetChild(0))
                {
                    // Add the trap to that chiko
                    GameObject newObject = this.gameObject;
                    GameObject newTrap = (GameObject)Instantiate(this.gameObject, new Vector3(chiko.gameObject.transform.GetChild(0).position.x, chiko.gameObject.transform.GetChild(0).position.y, 0), Quaternion.identity);
                    newTrap.transform.SetParent(chiko.gameObject.transform.GetChild(0));
                    newTrap.transform.localScale = new Vector3(0.7f, 0.7f, 0.7f);

                    GameObject temp = this.gameObject.transform.parent.gameObject;
                    temp.SetActive(false);
                }
                else
                {
                    GameObject.Destroy(this.gameObject);
                    break;
                }
            }
        }
    }

    public void SetActive()
    {
        Transform text = gameObject.transform.GetChild(0);
        if (text.GetComponent<Text>().text == "Set Active")
            text.GetComponent<Text>().text = "Set Inactive";
        else
            text.GetComponent<Text>().text = "Set Active";

        //ADD CHIKO INTO SELECTED LIST
        // Find all the chikos in content
        GameObject content = GameObject.Find("Content");

        if (text.GetComponent<Text>().text == "Set Active")
        {
            if (PlayerInventory.SelectedChiko.Length < 3)
            {
                for (int i = 0; i < PlayerInventory.ChikoList.Count; i++)
                {
                    // Find selected chiko in hanger 
                    if (content.gameObject.transform.GetChild(i) == this.gameObject)
                    {
                        // Find empty space in selected chiko list
                        for (int j = 0; j < PlayerInventory.SelectedChiko.Length; j++)
                        {
                            // if empty slot in found
                            if (PlayerInventory.SelectedChiko[j] == -1)
                            {
                                // Add chiko into the list
                                PlayerInventory.SelectedChiko[j] = PlayerInventory.ChikoList[i];
                                // Remove chiko from list
                                PlayerInventory.ChikoList[i] = -1;
                                break;
                            }
                        }
                    }
                }
            }
        }

        //REMOVE CHIKO FROM SELECTED LIST
        else
        {
            for (int i = 0; i < PlayerInventory.SelectedChiko.Length; i++)
            {
                // Find selected chiko in hanger 
                if (content.gameObject.transform.GetChild(i) == this.gameObject)
                {
                    // Find empty space in selected chiko list
                    for (int j = 0; j < PlayerInventory.ChikoList.Count; j++)
                    {
                        // if empty slot in found
                        if (PlayerInventory.ChikoList[j] == -1)
                        {
                            // Add chiko into the list
                            PlayerInventory.ChikoList[j] = PlayerInventory.SelectedChiko[i];
                            // Remove chiko from list
                            PlayerInventory.SelectedChiko[i] = -1;
                            break;
                        }
                    }
                }
            }
        }
    }
}