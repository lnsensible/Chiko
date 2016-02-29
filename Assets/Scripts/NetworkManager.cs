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
        CHECKED_NAME = 2,
        REGISTER_NAME = 3,
        SYNC_LIST = 4,
        LOAD_LIST = 5,
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

    static public void syncChikoList(string theList)
    {
        //send only to master-c
        RaiseEventOptions theeventOP = RaiseEventOptions.Default;
        theeventOP.Receivers = ExitGames.Client.Photon.ReceiverGroup.MasterClient;

        string theCheck = SystemInfo.deviceUniqueIdentifier + "!" + theList;
        Debug.Log("SYNCING CHIKOLIST for: " + theCheck);
        // ask to sync chikos
        PhotonNetwork.RaiseEvent((byte)EventCodes.SYNC_LIST, SystemInfo.deviceUniqueIdentifier, true, theeventOP);
    }

    static public void loadChikoList()
    {
        //send only to master-c
        RaiseEventOptions theeventOP = RaiseEventOptions.Default;
        theeventOP.Receivers = ExitGames.Client.Photon.ReceiverGroup.MasterClient;
        Debug.Log("LOADING CHIKOLIST");
        // ask to sync chikos
        PhotonNetwork.RaiseEvent((byte)EventCodes.LOAD_LIST, SystemInfo.deviceUniqueIdentifier, true, theeventOP);
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

        if (eventCode == (byte)EventCodes.LOAD_LIST)
        {
            string[] whee = content.ToString().Split('!');
            if (whee[0] == SystemInfo.deviceUniqueIdentifier)
            {
                string[] chlist = whee[1].Split(' ');
                for (int k = 0; k < chlist.Length; k++)
                {
                    PlayerInventory.ChikoList.Add(int.Parse(chlist[k]));
                }
                for (int l = 0; l < PlayerInventory.ChikoList.Count; l++)
                {
                    Debug.Log(PlayerInventory.ChikoList[l]);
                }
            }
        }
    }

}
