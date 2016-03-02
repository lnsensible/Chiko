using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Screen_victory : MonoBehaviour {

    public Text gold;
    public Image chiko;
    public Image[] TOTALCHIKOIMAGE;
	// Use this for initialization
	void Start () {
        int g = PlayerPrefs.GetInt("ChikoGained");
        
	}

    public void AcceptButtonPressed()
    {

    }
}
