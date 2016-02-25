using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Timer : MonoBehaviour {
    private float maxTime;
    public float timeLeft = 30.0f;
  
	// Use this for initialization
	void Start () {
        maxTime = timeLeft;
	}
	
	// Update is called once per frame
	void Update () {
        PreCountDown();
        GetComponent<Text>().text = Mathf.RoundToInt(timeLeft).ToString();
	}

    void PreCountDown()
    {
        timeLeft -= Time.deltaTime;
        if(timeLeft < maxTime*0.1f)
        {
            GetComponent<Text>().color = Color.red;
        }

        if (timeLeft < 0)
        {
            Application.LoadLevel("Mission Complete");
        }

    }
}
