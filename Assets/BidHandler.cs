using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class BidHandler : MonoBehaviour {

    public GameObject theBid;
    private Text theBidText;

    public bool AffectsMoney;

    private string tmpString = "";
    private TouchScreenKeyboard keyboard;
    private bool isKeyboardOpen;

    private bool changeBid;

    private int i_theBid;

	// Use this for initialization
	void Start () {
        theBidText = theBid.GetComponent<Text>();
        string[] tokens = theBidText.text.Split(' ');
        i_theBid = int.Parse(tokens[0]);
	}
	
	// Update is called once per frame
	void Update () {
        if (changeBid)
        {
            KeyboardHandle();
        }
        
        if (theBidText.text == "")
        {
            theBidText.text = i_theBid + " G";
        }
	}

    public void destroyMe()
    {
        if (AffectsMoney)
        {
            int yourGold = PlayerPrefs.GetInt("Gold");
            yourGold += i_theBid;
            PlayerPrefs.SetInt("Gold", yourGold);
        }

        GameObject.Find("Auction Tab").GetComponent<AuctionContentHandler>().removeAuction();
        Destroy(gameObject);
    }
    
    void KeyboardHandle()
    {
        if (!isKeyboardOpen)
        {
            if (AffectsMoney)
            {
                int yourGold = PlayerPrefs.GetInt("Gold");
                yourGold += i_theBid;
                PlayerPrefs.SetInt("Gold", yourGold);
            }

            keyboard = TouchScreenKeyboard.Open(tmpString, TouchScreenKeyboardType.NumberPad, false, false, false, false, theBidText.text);
            isKeyboardOpen = true;
        }

        if (keyboard.done)
        {
            int yourGold = PlayerPrefs.GetInt("Gold");

            if (keyboard.text != "")
            {
                if (yourGold >= int.Parse(keyboard.text))
                    i_theBid = int.Parse(keyboard.text);

                if (AffectsMoney)
                {
                    yourGold -= i_theBid;
                    PlayerPrefs.SetInt("Gold", yourGold);
                }

                theBidText.text = i_theBid + " G";
            }

            PlayerPrefs.SetInt("Gold", yourGold);

            tmpString = "";
            isKeyboardOpen = false;
            changeBid = false;
        }
        else
        {
            theBidText.text = keyboard.text;
        }
    }

    public void ChangeBid()
    {
        changeBid = true;
    }
}
