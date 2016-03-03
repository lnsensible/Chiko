﻿using UnityEngine;
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

        Debug.Log("ChikoList Size: " + PlayerInventory.ChikoList.Count);
        Debug.Log("SChikoList Size: " + PlayerInventory.SelectedChiko.Length);
        for (int z = 0; z < PlayerInventory.SelectedChiko.Length; z++)
        {
            Debug.Log(PlayerInventory.SelectedChiko[z]);
        }
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
                // Add the trap to that chiko
                // Data
                //for (int i = 0; i < PlayerInventory.SelectedChiko.Length; i++)
                //{
                //    if (PlayerInventory.SelectedChiko[i] == )
                //    {
                if (this.gameObject.transform.parent.name == "InventoryBearTrap")
                {
                    PlayerInventory.SelectedTrap[0] = 0;
                }
                else if (this.gameObject.transform.parent.name == "InventoryTripWireTrap")
                {
                    PlayerInventory.SelectedTrap[0] = 1;
                }
                else if (this.gameObject.transform.parent.name == "InventoryDecoyTrap")
                {
                    PlayerInventory.SelectedTrap[0] = 2;
                }
                else if (this.gameObject.transform.parent.name == "InventoryWallTrap")
                {
                    PlayerInventory.SelectedTrap[0] = 3;
                }
                else if (this.gameObject.transform.parent.name == "InventorySpikeTrap")
                {
                    PlayerInventory.SelectedTrap[0] = 4;
                }
                //    }
                //}

                // Visual
                GameObject newObject = this.gameObject;
                GameObject newTrap = (GameObject)Instantiate(this.gameObject, new Vector3(chiko.gameObject.transform.GetChild(0).position.x, chiko.gameObject.transform.GetChild(0).position.y, 0), Quaternion.identity);
                newTrap.transform.SetParent(chiko.gameObject.transform.GetChild(0));
                newTrap.transform.localScale = new Vector3(0.7f, 0.7f, 0.7f);
                newTrap.GetComponent<UnityEngine.UI.Button>().interactable = false;


                //REMOVE TRAP FROM TRAP INVENTORY
                GameObject trapContent = GameObject.Find("TrapContent");
                for (int i = 0; i < PlayerInventory.ChikoTrapList.Count; i++)
                {
                    if (trapContent.gameObject.transform.GetChild(i).gameObject == this.gameObject.transform.parent.gameObject)
                    {
                        PlayerInventory.ChikoTrapList.RemoveAt(i);
                        break;
                    }
                }
            }
        }
    }

    public void SetActive()
    {
        Transform text = gameObject.transform.GetChild(0);
        GameObject content = GameObject.Find("Content");

        if (text.GetComponent<Text>().text == "Set Active")
        {
            text.GetComponent<Text>().text = "Set Inactive";

            //Debug.Log("Setting active Chiko");

            for (int i = 0; i < PlayerInventory.ChikoList.Count; i++)
            {
                //Debug.Log("Looping through Chiko List");
                // Get index of chiko in hanger and chiko in list
                if (content.gameObject.transform.GetChild(i).gameObject == this.gameObject.transform.parent.gameObject)
                {
                    //Debug.Log("Found this game object");
                    // Find empty space in selected chiko list
                    for (int j = 0; j < PlayerInventory.SelectedChiko.Length; j++)
                    {
                        //Debug.Log("Finding empty space in selected list");
                        // if empty slot in found
                        if (PlayerInventory.SelectedChiko[j] == -1)
                        {
                            //Debug.Log("Empty space found & adding to selected list");
                            // Add chiko into the list
                            PlayerInventory.SelectedChiko[j] = PlayerInventory.ChikoList[i - 2];
                            // Remove chiko from list
                            PlayerInventory.ChikoList.RemoveAt(i - 1);

                            //Debug.Log("ChikoList Size: " + PlayerInventory.ChikoList.Count);
                            //Debug.Log("SChikoList Size: " + PlayerInventory.SelectedChiko.Length);
                            //for (int z = 0; z < PlayerInventory.SelectedChiko.Length; z++)
                            //{
                            //    Debug.Log(PlayerInventory.SelectedChiko[z]);
                            //}

                            break;
                        }
                        else
                        {
                            text.GetComponent<Text>().text = "Set Active";
                            Debug.Log("List is full");
                        }
                    }
                }
            }
        }
        else
        {
            text.GetComponent<Text>().text = "Set Active";

            //for (int i = 0; i < PlayerInventory.SelectedChiko.Length; i++)
            //{
            //    if (PlayerInventory.SelectedChiko[i] == )
            //    {
            //        // Add chiko into the list
            //        PlayerInventory.ChikoList.Add(PlayerInventory.SelectedChiko[i]);
            //        // Remove chiko from selected list
            //        PlayerInventory.SelectedChiko[i] = -1;

            //        Debug.Log("ChikoList Size: " + PlayerInventory.ChikoList.Count);
            //        Debug.Log("SChikoList Size: " + PlayerInventory.SelectedChiko.Length);
            //        for (int z = 0; z < PlayerInventory.SelectedChiko.Length; z++)
            //        {
            //            Debug.Log(PlayerInventory.SelectedChiko[z]);
            //        }
            //        break;
            //    }
            //}
        }
    }
}
