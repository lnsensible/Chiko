using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class NetworkManager : MonoBehaviour {

    private Text textbox;

	// Use this for initialization
	void Start () {
        textbox = GameObject.Find("Servertext").GetComponent<Text>();
        Connect();
	}

    void Connect()
    {
        PhotonNetwork.ConnectUsingSettings("Chiko BETA");

    }
	
	// Update is called once per frame
	void Update () {
        textbox.text = (PhotonNetwork.connectionState.ToString());
        if (PhotonNetwork.connectedAndReady || Input.GetMouseButton(0))
        {
            Application.LoadLevel("menuscreen");
        }
	}
}
