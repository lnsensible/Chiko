using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class NetworkManager : MonoBehaviour {

    private Text textbox;
    private bool checkedName = false;

    private bool enterName = false;

    public enum EventCodes
    {
        CHECK_NAME = 1,
        CHECKED_NAME,
    }

	// Use this for initialization
	void Start () {
        //Debug.Log((byte)EventCodes.CHECK_NAME);
        textbox = GameObject.Find("Servertext").GetComponent<Text>();
        Connect();
        
	}

    void Connect()
    {
        PhotonNetwork.ConnectUsingSettings("Chiko BETA");
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButton(0))
        {
            Application.LoadLevel("menuscreen");
        }

        textbox.text = (PhotonNetwork.connectionState.ToString());
        if (PhotonNetwork.connectedAndReady && !PhotonNetwork.inRoom)
        {
            PhotonNetwork.JoinRandomRoom();
        }

        if (PhotonNetwork.inRoom && !checkedName)
        {
            // set the callback func
            PhotonNetwork.OnEventCall += OnEventHandler;

            //send only to master-c
            RaiseEventOptions theeventOP = RaiseEventOptions.Default;
            theeventOP.Receivers = ExitGames.Client.Photon.ReceiverGroup.MasterClient;

            //ask to check name.
            PhotonNetwork.RaiseEvent((byte)EventCodes.CHECK_NAME, SystemInfo.deviceUniqueIdentifier, false, RaiseEventOptions.Default);            
        }

        if (PhotonNetwork.inRoom && checkedName && enterName)
        {
            //enter name
        }
	}

    private void OnEventHandler(byte eventCode, object content, int senderID)
    {
        if (eventCode == (byte)EventCodes.CHECKED_NAME)
        {
            Debug.Log("something is happening");

        }
    }

}
