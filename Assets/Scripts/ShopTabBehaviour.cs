using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ShopTabBehaviour : MonoBehaviour {

    public GameObject chikoTab;
    public GameObject trapTab;
    Image trapTab_head;
    Image chikoTab_head;

    public GameObject popUpbox;

    public Image lockIcon_bearTrap;
    int BearTrapUnlocked;
    public Image lockIcon_spikeTrap;
    int SpikeTraplocked;
    public Image lockIcon_tripTrap;
    int TripTraplocked;
    public Image lockIcon_decoyTrap;
    int DecoyTraplocked;
    public Image lockIcon_wallTrap;
    int WallTraplocked;

    Text amount;
    int amount_int;
    Text amount_gem;
    int amount_gem_int;

    Text amount2;
    Text amount_gem2;

	// Use this for initialization
	void Start () {
        trapTab_head = trapTab.GetComponent<Image>();
        chikoTab_head = chikoTab.GetComponent<Image>();
        ChikosTabPressed();

        amount_int = PlayerPrefs.GetInt("Gold");
        amount = GameObject.Find("Gems").transform.GetChild(0).GetComponentInChildren<Text>();
        amount_gem_int = PlayerPrefs.GetInt("Gems");
        amount_gem = GameObject.Find("Gems").transform.GetChild(1).GetComponentInChildren<Text>();

        amount2 = GameObject.Find("Gems1").transform.GetChild(0).GetComponentInChildren<Text>();
        amount_gem2 = GameObject.Find("Gems1").transform.GetChild(1).GetComponentInChildren<Text>();

        BearTrapUnlocked = PlayerPrefs.GetInt("BearTraplocked");
        if(BearTrapUnlocked != 0 || BearTrapUnlocked != 1)
            BearTrapUnlocked = 0;

        SpikeTraplocked = PlayerPrefs.GetInt("SpikeTraplocked");
        if (SpikeTraplocked != 0 || SpikeTraplocked != 1)
            SpikeTraplocked = 0;

        TripTraplocked = PlayerPrefs.GetInt("TripTraplocked");
        if (TripTraplocked != 0 || TripTraplocked != 1)
            TripTraplocked = 0;

        DecoyTraplocked = PlayerPrefs.GetInt("SpikeTraplocked");
        if (DecoyTraplocked != 0 || DecoyTraplocked != 1)
            DecoyTraplocked = 0;

        WallTraplocked = PlayerPrefs.GetInt("WallTraplocked");
        if (WallTraplocked != 0 || WallTraplocked != 1)
            WallTraplocked = 0;
	}
	
	// Update is called once per frame
	void Update () {
        amount_int = PlayerPrefs.GetInt("Gold");
        amount_gem_int = PlayerPrefs.GetInt("Gems");

	    if(BearTrapUnlocked == 1)
            lockIcon_bearTrap.color = Color.clear;
        if(SpikeTraplocked == 1)
            lockIcon_spikeTrap.color = Color.clear;
        if (WallTraplocked == 1)
            lockIcon_wallTrap.color = Color.clear;
        if(TripTraplocked == 1)
            lockIcon_tripTrap.color = Color.clear;
        if (DecoyTraplocked == 1)
            lockIcon_decoyTrap.color = Color.clear;

        amount.text = "" + amount_int;
        amount_gem.text = "" + amount_gem_int;

        amount2.text = "" + amount_int;
        amount_gem2.text = "" + amount_gem_int;
	}

    public void ChikosTabPressed()
    {
        chikoTab_head.color = Color.white;
        trapTab_head.color = Color.grey;

        //hide the trap tab stuff
        foreach(GameObject trapTab in GameObject.FindGameObjectsWithTag("TrapShop Tab"))
        {
            Text trapText = trapTab.GetComponent<Text>();
            if (trapText != null)
                trapText.enabled = false;
            Image trapTabImg = trapTab.GetComponent<Image>();
            if(trapTabImg != null)
                trapTabImg.color = Color.clear;
        }

        //show the chiko tab stuff
        foreach (GameObject chikoTab in GameObject.FindGameObjectsWithTag("ChikoShop Tab"))
        {
            Text ChikoText = chikoTab.GetComponent<Text>();
            if (ChikoText != null)
                ChikoText.enabled = true;
            Image ChikoTabImg = chikoTab.GetComponent<Image>();
            if (ChikoTabImg != null)
                ChikoTabImg.color = Color.white;
        }
    }
    public void TrapsTabPressed()
    {
        trapTab_head.color = Color.white;
        chikoTab_head.color = Color.grey;

        foreach (GameObject trapTab in GameObject.FindGameObjectsWithTag("TrapShop Tab"))
        {
            Text trapText = trapTab.GetComponent<Text>();
            if (trapText != null)
                trapText.enabled = true;
            Image trapTabImg = trapTab.GetComponent<Image>();
            if (trapTabImg != null)
                trapTabImg.color = Color.white;
        }

        foreach (GameObject chikoTab in GameObject.FindGameObjectsWithTag("ChikoShop Tab"))
        {
            Text chikoText = chikoTab.GetComponent<Text>();
            if (chikoText != null)
                chikoText.enabled = false;
            Image chikoTabImg = chikoTab.GetComponent<Image>();
            if (chikoTabImg != null)
                chikoTabImg.color = Color.clear;
        }
    }

    public void BuyBearTrap()
    {
        //havent unlock ,set to unlock first then upon clicking again will buy it.
        if(BearTrapUnlocked == 0)
        {
            if (amount_int >= 1500)
            {
                amount_int -= 1500;
                BearTrapUnlocked = 1;

                Button bo = GameObject.Find("BearTrapBuyButton").GetComponent<Button>();
                bo.GetComponentInChildren<Text>().text = "BUY";
                //writing to player pref so that the bear trap is unlocked.
                PlayerPrefs.SetInt("BearTraplocked", BearTrapUnlocked);

                PlayerPrefs.SetInt("Gold", amount_int);
            }
        }
        else
        {

        }
    }

    public void BuySpikeTrap()
    {
        //havent unlock ,set to unlock first then upon clicking again will buy it.
        if (SpikeTraplocked == 0)
        {
            if(amount_int >= 1500)
            {
                amount_int -= 1500;
                SpikeTraplocked = 1;
            
                Button bo = GameObject.Find("SpikeTrapBuyButton").GetComponent<Button>();
                bo.GetComponentInChildren<Text>().text = "BUY";
                //writing to player pref so that the bear trap is unlocked.
                PlayerPrefs.SetInt("SpikeTraplocked", SpikeTraplocked);

                PlayerPrefs.SetInt("Gold", amount_int);
            }
        }
        else
        {

        }
    }

    public void BuyTripTrap()
    {
        //havent unlock ,set to unlock first then upon clicking again will buy it.
        if (SpikeTraplocked == 0)
        {
            if(amount_int >= 1500)
            {
                amount_int -= 1500;
                TripTraplocked = 1;
                Button bo = GameObject.Find("TripWireTrapBuyButton").GetComponent<Button>();
                bo.GetComponentInChildren<Text>().text = "BUY";
                //writing to player pref so that the bear trap is unlocked.
                PlayerPrefs.SetInt("TripTraplocked", TripTraplocked);

                PlayerPrefs.SetInt("Gold", amount_int);
            }
        }
        else
        {

        }
    }

    public void buyDecoyTrap()
    {
        //havent unlock ,set to unlock first then upon clicking again will buy it.
        if (DecoyTraplocked == 0)
        {
            if (amount_int >= 2000)
           {
               amount_int -= 2000;
                DecoyTraplocked = 1;
                Button bo = GameObject.Find("DecoyTrapBuyButton").GetComponent<Button>();
                bo.GetComponentInChildren<Text>().text = "BUY";
                //writing to player pref so that the bear trap is unlocked.
                PlayerPrefs.SetInt("DecoyTraplocked", DecoyTraplocked);

                PlayerPrefs.SetInt("Gold", amount_int);
           }
        }
        else
        {

        }
    }

    public void buyWallTrap()
    {
        //havent unlock ,set to unlock first then upon clicking again will buy it.
        if (WallTraplocked == 0)
        {
            if(amount_int >= 2000)
            {
                amount_int -= 2000;
                WallTraplocked = 1;
                Button bo = GameObject.Find("WallTrapBuyButton").GetComponent<Button>();
                bo.GetComponentInChildren<Text>().text = "BUY";
                //writing to player pref so that the bear trap is unlocked.
                PlayerPrefs.SetInt("WallTraplocked", WallTraplocked);

                PlayerPrefs.SetInt("Gold", amount_int);
            }
        }
        else
        {

        }
    }

    public void BuyChiko(GameObject chiko)
    {
        Text chiko_price = chiko.transform.GetChild(1).GetComponent<Text>();
        int temp = int.Parse(chiko_price.text);
        if(amount_gem_int >= temp)
        { 
            amount_gem_int -= temp;
            chiko.SetActive(false);
            PlayerPrefs.SetInt("Gems", amount_gem_int);
            //send to playerpref that this chiko skin is bought
        }
    }

    public void CHEAT_topup()
    {
        amount_int += 1000;
        PlayerPrefs.SetInt("Gold", amount_int);
    }

    public void CHEAT_topUpGEM()
    {
        amount_gem_int += 5;
        PlayerPrefs.SetInt("Gems" , amount_gem_int);
    }
}
