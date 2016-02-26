using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class NetworkManager : MonoBehaviour {

    
    private bool checkedName = false;

    public bool enterName = false;

    private char theSeparator = '!';

    public float checkTimer = 2;

    public enum EventCodes
    {
        CHECK_NAME = 1,
        CHECKED_NAME,
        REGISTER_NAME,
    }

	// Use this for initialization
	void Start () {
        //Debug.Log((byte)EventCodes.CHECK_NAME);
        PhotonNetwork.OnEventCall += OnEventHandler;
        Connect();
        
	}

    void Connect()
    {
        PhotonNetwork.ConnectUsingSettings("Chiko BETA");
    }
	
	// Update is called once per frame
	void Update () {

	}

    public void UpdateNetworkSplashScreen(Text textbox)
    {
        if (PhotonNetwork.connectedAndReady && !PhotonNetwork.inRoom)
        {
            PhotonNetwork.JoinRandomRoom();
        }

        if (PhotonNetwork.inRoom && !checkedName)
        {
            CheckUsername(textbox);
            checkedName = true;
        }

        if (checkedName)
        {
            checkTimer -= Time.deltaTime;
            if (checkTimer < 0)
            {
                checkedName = false;
                checkTimer = 2;
            }
        }
    }

    public void CheckUsername(Text textbox)
    {
        //send only to master-c
        RaiseEventOptions theeventOP = RaiseEventOptions.Default;
        theeventOP.Receivers = ExitGames.Client.Photon.ReceiverGroup.MasterClient;
        Debug.Log("CHECKING USERNAME");
        //ask to check name.
        PhotonNetwork.RaiseEvent((byte)EventCodes.CHECK_NAME, SystemInfo.deviceUniqueIdentifier, true, theeventOP);
    }

    public bool checkRegisterUsername()
    {
        return enterName;
    }

    public void RegisterUsername(string theusername)
    {
        //send only to master-c
        RaiseEventOptions theeventOP = RaiseEventOptions.Default;
        theeventOP.Receivers = ExitGames.Client.Photon.ReceiverGroup.MasterClient;

        //ask to register name.
        byte oiajf = 3;
        PhotonNetwork.RaiseEvent(oiajf, SystemInfo.deviceUniqueIdentifier + theSeparator + theusername, true, theeventOP);
        Debug.Log("Trying to register");
    }

    private void OnEventHandler(byte eventCode, object content, int senderID)
    {
        if (eventCode == (byte)2)
        {
            if(content == null)
            {
                //register name
                enterName = true;
            }
            else
            {
                Debug.Log("set playername" + content.ToString());
                PlayerInventory.playerName = content.ToString();
            }
        }
    }

}
