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
    private int numBids;
    private int numPlacedBids;

    public GameObject bidBoxTemplate;
    public GameObject bidPlacedTemplate;

    private Vector3 auctionContentInitialPos = Vector3.zero;

    private int theTab = 1;

    public void setTab(int thetab)
    {
        theTab = thetab;
        DestroyBoxes();
        ReloadBoxes(true);
        
    }

	// Use this for initialization
	void Start () {
        numAuctions = 5;
        numBids = 10;
        numPlacedBids = 2;
        auctionContentInitialPos = new Vector3(-7.5f, 217.7f, 0.0f);
        ReloadBoxes(false);
	}

    void ReloadBoxes(bool reset)
    {
        if (reset)
            auctionContent.transform.position = auctionContentInitialPos;

        if (theTab == 1)
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
            clonePos.y += 9;
            addClone.GetComponent<RectTransform>().localPosition = clonePos;
        }
        else
        {
            for (int i = 0; i < numPlacedBids; i++)
            {
                GameObject clone = (GameObject)Instantiate(bidPlacedTemplate, Vector3.zero, Quaternion.identity);
                clone.transform.parent = auctionContent.transform;
                clone.GetComponent<RectTransform>().localScale = Vector3.one;
                Vector3 spawnPos = auctionOrigin;
                spawnPos.x += (i * auctionSpacing);
                clone.GetComponent<RectTransform>().localPosition = spawnPos;
            }

            for (int i = 0; i < numBids; i++)
            {
                GameObject clone = (GameObject)Instantiate(bidBoxTemplate, Vector3.zero, Quaternion.identity);
                clone.transform.parent = auctionContent.transform;
                clone.GetComponent<RectTransform>().localScale = Vector3.one;
                Vector3 spawnPos = auctionOrigin;
                spawnPos.x += ((i + numPlacedBids) * auctionSpacing);
                clone.GetComponent<RectTransform>().localPosition = spawnPos;
            }
        }
    }
	
	// Update is called once per frame
	void Update () {
        RestrictAuctionView();
	}

    void RestrictAuctionView()
    {
        if (auctionContent.transform.position.x > 0 && !Input.GetMouseButton(0))
        {
            auctionContent.transform.position = Vector3.Lerp(auctionContent.transform.position, new Vector3(0, auctionContent.transform.position.y, auctionContent.transform.position.z), 20 * Time.deltaTime);
        }

        if (theTab == 1)
        {
            if (auctionContent.transform.position.x < -(Mathf.Max(0, numAuctions + 1)) * (auctionSpacing + 50/*boxwidth*/) && !Input.GetMouseButton(0))
            {
                auctionContent.transform.position = Vector3.Lerp(auctionContent.transform.position, new Vector3(-(Mathf.Max(0, numAuctions + 1)) * (auctionSpacing + 50/*boxwidth*/), auctionContent.transform.position.y, auctionContent.transform.position.z), 20 * Time.deltaTime);
            }
        }
        else
        {
            if (auctionContent.transform.position.x < -(Mathf.Max(0, numBids)) * (auctionSpacing + 50/*boxwidth*/) && !Input.GetMouseButton(0))
            {
                auctionContent.transform.position = Vector3.Lerp(auctionContent.transform.position, new Vector3(-(Mathf.Max(0, numBids)) * (auctionSpacing + 50/*boxwidth*/), auctionContent.transform.position.y, auctionContent.transform.position.z), 20 * Time.deltaTime);
            }
        }
    }

    void DestroyBoxes()
    {
        foreach (GameObject go in GameObject.FindGameObjectsWithTag("AuctionBox"))
        {
            
            Destroy(go);
        }
    }

    public void removeAuction()
    {
        numAuctions--;
        //move auctioncontent left :|
        Vector3 newPos = auctionContent.transform.position;
        newPos.x += 50;
        auctionContent.transform.position = newPos;

        DestroyBoxes();
        ReloadBoxes(true);
    }
}
