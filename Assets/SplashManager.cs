using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SplashManager : MonoBehaviour {

    private Text textbox;
    private bool notif = true;
    private bool loadded = false;

	// Use this for initialization
	void Start () {
        textbox = GameObject.Find("Servertext").GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
        //bypass
        if (Input.GetKey(KeyCode.J) || Input.touchCount == 3)
        {
            Application.LoadLevel("menuscreen");
        }

        GetComponent<NetworkManager>().UpdateNetworkSplashScreen(textbox);

        if (GetComponent<NetworkManager>().enterName)
        {
            if (notif)
            {
                textbox.text = "Tap here to register username";
                notif = false;
            }
        }

        if (PlayerInventory.playerName != "")
        {
            if (!loadded)
            {
                loadded = true;
                NetworkManager.loadChikoList();
            }

            if (PlayerInventory.ChikoList.Count != 0)
                Application.LoadLevel("menuscreen");
        }
	}
}
