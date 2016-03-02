using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Screen_victory : MonoBehaviour {

    public Text gold;
    public Image chiko;
    public Sprite[] TOTALCHIKOIMAGE;
    public Text test;
	// Use this for initialization
	void Start () {
        int g = PlayerPrefs.GetInt("ChikoGained");
        chiko.sprite = TOTALCHIKOIMAGE[g];
	}

    public void AcceptButtonPressed()
    {
        GetComponent<SceneNavigation>().GoToMainMenu();
    }
}
