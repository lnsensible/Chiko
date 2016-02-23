using UnityEngine;
using System.Collections;

public class DecoyBombScript : MonoBehaviour {

    public GameObject bombPrefab;

    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
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
            if (col.tag == "Enemy" || col.tag == "Player")
            {
                GetComponent<Animation>().Play();
                Invoke("DestroyDecoy", 1.0f);
            }
        }
    }
}
