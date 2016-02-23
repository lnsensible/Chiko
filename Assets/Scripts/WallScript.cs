using UnityEngine;
using System.Collections;

public class WallScript : MonoBehaviour {

    public GameObject wallPrefab;

    private bool destroyed;


	// Use this for initialization
	void Start () {
	
	}

    void Update()
    {
        if (destroyed)
        {

        }
    }

    public void placeWall(Vector3 pos, float direction)
    {
        GameObject clone = (GameObject)Instantiate(wallPrefab, pos, Quaternion.identity);
        clone.transform.Rotate(0, direction, 0);
    }

    void OnTriggerEnter(Collider col)
    {
        if (gameObject.tag == "Trap")
        {
            if (col.tag == "Enemy" || col.tag == "Player")
            {
                Debug.Log("destroyed");
                gameObject.tag = "Default";
                destroyed = true;
            }
        }
    }
}
