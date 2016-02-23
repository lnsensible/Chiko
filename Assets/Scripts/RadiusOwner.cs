using UnityEngine;
using System.Collections;

public class RadiusOwner : MonoBehaviour {

    public int whoseRadius;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void setOwner(int id)
    {
        whoseRadius = id;
    }

    public int getOwner()
    {
        return whoseRadius;
    }
}
