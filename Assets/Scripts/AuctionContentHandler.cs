using UnityEngine;
using System.Collections;

public class AuctionContentHandler : MonoBehaviour {

    public GameObject auctionContent;
    public GameObject auctionBoxTemplate;
    public GameObject auctionAddTemplate;

    private Vector3 auctionOrigin = new Vector3(60, -60, 0);
    public float auctionSpacing;

    public GameObject auctionView;

    private int numAuctions;

	// Use this for initialization
	void Start () {
        numAuctions = 20;
        ReloadBoxes();
	}

    void ReloadBoxes()
    {
        for (int i = 0; i < numAuctions; i++)
        {
            GameObject clone = (GameObject)Instantiate(auctionBoxTemplate, Vector3.zero, Quaternion.identity);
            clone.transform.parent = auctionContent.transform;
            clone.GetComponent<RectTransform>().localScale = Vector3.one;
            Vector3 spawnPos = auctionOrigin;
            spawnPos.x += (i * auctionSpacing);
            clone.GetComponent<RectTransform>().localPosition = spawnPos;
        }

        GameObject addClone = (GameObject)Instantiate(auctionAddTemplate, Vector3.zero, Quaternion.identity);
        addClone.transform.parent = auctionContent.transform;
        addClone.GetComponent<RectTransform>().localScale = Vector3.one;
        Vector3 clonePos = auctionOrigin;
        clonePos.x += (numAuctions * auctionSpacing);
        addClone.GetComponent<RectTransform>().localPosition = clonePos;
    }
	
	// Update is called once per frame
	void Update () {
        RestrictAuctionView();
	}

    void RestrictAuctionView()
    {
        if (auctionContent.transform.position.x > 0 && !Input.GetMouseButton(0))
        {
            Debug.Log(auctionContent.transform.position);
            auctionContent.transform.position = Vector3.Lerp(auctionContent.transform.position, new Vector3(0, auctionContent.transform.position.y, auctionContent.transform.position.z), 20 * Time.deltaTime); 
        }
    }

    void DestroyBoxes()
    {
        Debug.Log("hi");
        foreach (GameObject go in GameObject.FindGameObjectsWithTag("AuctionBox"))
        {
            
            Destroy(go);
        }
    }

    public void removeAuction()
    {
        numAuctions--;
        DestroyBoxes();
        ReloadBoxes();
    }
}
