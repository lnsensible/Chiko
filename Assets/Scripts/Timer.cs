using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Timer : MonoBehaviour {
    public float maxTime;
    public float timeLeft = 30.0f;
  
	// Use this for initialization
	void Start () {
            
	}
	
	// Update is called once per frame
	void Update () {
        PreCountDown();
        GetComponent<Text>().text = timeLeft.ToString();
	}

    void PreCountDown()
    {
        timeLeft -= Time.deltaTime;
        if(timeLeft < 0)
        {
            //End the level
            //GameOver();
        }

    }
}
