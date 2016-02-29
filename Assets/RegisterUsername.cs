using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class RegisterUsername : MonoBehaviour {

    public GameObject networkmanager;

    private bool registerusername;

    private string tmpString = "";
    private TouchScreenKeyboard keyboard;
    private bool isKeyboardOpen;

    public GameObject textField;
    private Text theText;

	// Use this for initialization
	void Start () {
        theText = textField.GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {

        if (registerusername)
        {
            if (!isKeyboardOpen)
            {
                keyboard = TouchScreenKeyboard.Open(tmpString, TouchScreenKeyboardType.ASCIICapable, false, false, false, false, "ENTER YOUR USERNAME");
                isKeyboardOpen = true;

                if (theText.text == "")
                {
                    theText.text = "Tap here to enter your username";
                }
            }

            if (keyboard.done)
            {
                theText.text = keyboard.text;
                tmpString = "";
                isKeyboardOpen = false;
                registerusername = false;

                if (theText.text != "")
                {
                    theText.text = "Trying to register with " + keyboard.text;
                    networkmanager.GetComponent<NetworkManager>().RegisterUsername(keyboard.text);
                }
                else
                {
                    theText.text = " FICL YOU";
                }

                
            }
            else
            {
                theText.text = keyboard.text;
            }
        }
	}

    public void Igotclicked()
    {
        theText.text = "...";
        if (networkmanager.GetComponent<NetworkManager>().enterName)
        {
            if (Application.platform == RuntimePlatform.WindowsEditor)
            {
                networkmanager.GetComponent<NetworkManager>().RegisterUsername("Motherserver");
            }
            else
                registerusername = networkmanager.GetComponent<NetworkManager>().checkRegisterUsername();
        }

        //networkmanager.GetComponent<NetworkManager>().RegisterUsername("Motherserver");
    }
}
