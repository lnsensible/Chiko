using UnityEngine;
using System.Collections;

public class PlayerAnimation : MonoBehaviour {

    private float currentY;
    public float Yoffset;
    private bool Ydir;

    public float YhoverSpeed;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
        if (Ydir)
        {
            currentY += YhoverSpeed * Time.deltaTime;
            if (currentY > Yoffset)
            {
                Ydir = false;
            }
        }
        else
        {
            currentY -= YhoverSpeed * Time.deltaTime;
            if (currentY < -Yoffset)
            {
                Ydir = true;
            }
        }
	}

    public float getY()
    {
        return currentY;
    }
}
