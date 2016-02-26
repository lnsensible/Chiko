using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SplashLogoGlow : MonoBehaviour {

    Image image;

    // Glowing effect variables
    bool fade_Dir;

	// Use this for initialization
	void Start () {
        image = gameObject.GetComponent<Image>();
	}
	
	// Update is called once per frame
	void Update () {
        
        Color c = image.color;
        if (fade_Dir)
        {
            c.a += 0.01f;
            if (c.a > .8)
                fade_Dir = false;
        }
        else
        {
            c.a -= 0.01f;
            if (c.a < .2)
                fade_Dir = true;
        }
        image.color = c;
	}
}
