using UnityEngine;
using System.Collections;

public class WallScript : MonoBehaviour {

    public GameObject wallPrefab;

    private bool destroyed;
    public float theHealth;

    public float destroyingSpeed;

    private float fallTarget;


	// Use this for initialization
	void Start () {
        destroyed = false;
	}

    void Update()
    {
        if (theHealth < 0)
        {
            gameObject.tag = "Untagged";

            Vector3 currenta = gameObject.transform.eulerAngles;
            currenta.z -= destroyingSpeed * Time.deltaTime;
            if (Mathf.Abs(270 - currenta.z) < 10)
            {
                currenta.z = 270;
                gameObject.transform.eulerAngles = currenta;
                destroyed = true;
            }
            else
            {
                gameObject.transform.eulerAngles = currenta;
            }
        }

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
            if (col.tag == "Enemy")
            {
                Debug.Log("entered wall");
                col.gameObject.GetComponent<Enemy>().OverrideTarget(gameObject);
            }
        }
    }
}
