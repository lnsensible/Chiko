using UnityEngine;
using System.Collections;

public class SetTripWire : MonoBehaviour {

    public GameObject tripwirestandPrefab;
    public GameObject tripwirePrefab;

    public GameObject explosionAnim;

    private GameObject theFirstStand;
    private GameObject theSecondStand;

    private bool firstTouch;
    private Vector3 firstTouchPos;
    private Vector3 wiremidpoint;

    private float distance;

    public float theDamage;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	public bool PlaceTripwire (Vector3 position) {
        if (!firstTouch)
        {
            firstTouchPos = position;
            theSecondStand = (GameObject)Instantiate(tripwirestandPrefab, position, Quaternion.identity);
            firstTouch = true;
        }
        else
        {
            theFirstStand = (GameObject)Instantiate(tripwirestandPrefab, position, Quaternion.identity);
            GameObject clone = (GameObject)Instantiate(tripwirePrefab, firstTouchPos, Quaternion.identity);
            float dist = Vector3.Distance(position, firstTouchPos);
            clone.transform.localScale = new Vector3(clone.transform.localScale.x, clone.transform.localScale.y, dist * 5.4f);
            clone.transform.LookAt(position);
            clone.transform.Rotate(new Vector3(0, 1, 0), 180);
            clone.GetComponent<SetTripWire>().distance = dist;
            clone.GetComponent<SetTripWire>().wiremidpoint = (theFirstStand.transform.position + theSecondStand.transform.position) / 2;

            firstTouch = false;
            return true;
        }
        return false;
	}

    void Playexplosion(Vector3 pos)
    {
        GameObject theexplosion = (GameObject)Instantiate(explosionAnim, pos, Quaternion.identity);
        Vector3 scale = theexplosion.transform.localScale;
        scale = scale + new Vector3(distance*2, distance*2, distance*2);
        theexplosion.transform.localScale = scale;
        theexplosion.GetComponent<Animation>().Play();
    }

    void OnTriggerEnter(Collider col)
    {
        if (gameObject.tag == "Trap")
        {
            if ((col.tag == "Enemy" || col.tag == "Player"))
            {
                Debug.Log("Tripwire activated");
                col.gameObject.GetComponent<Enemy>().MinusHealth(theDamage);
                Destroy(gameObject);
                Playexplosion(wiremidpoint);
            }
        }
    }
}
