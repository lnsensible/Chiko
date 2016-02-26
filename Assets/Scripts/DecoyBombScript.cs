using UnityEngine;
using System.Collections;

public class DecoyBombScript : MonoBehaviour {

    public GameObject bombPrefab;
    public GameObject explosionPrefab;

    public float theHealth;

    private bool triggeredHealth0;

    // Use this for initialization
    void Start()
    {
        triggeredHealth0 = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (theHealth < 0 && !triggeredHealth0)
        {
            triggeredHealth0 = true;
            Destroy(gameObject);
            GameObject theexplosion = (GameObject)Instantiate(explosionPrefab, gameObject.transform.position, Quaternion.identity);
            //Vector3 scale = theexplosion.transform.localScale * 2;
            theexplosion.GetComponent<Animation>().Play();
        }
    }

    public void placeDecoy(Vector3 pos)
    {
        Instantiate(bombPrefab, pos, Quaternion.identity);
    }

    public void DestroyDecoy()
    {
        Destroy(gameObject);
    }

    void OnTriggerEnter(Collider col)
    {
        if (gameObject.tag == "Trap")
        {
            if (col.tag == "Enemy")
            {
                col.gameObject.GetComponent<Enemy>().OverrideTarget(gameObject);
            }
        }
    }
}
