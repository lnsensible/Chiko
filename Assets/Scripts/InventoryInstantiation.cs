using UnityEngine;
using System.Collections;

public class InventoryInstantiation : MonoBehaviour {

    public GameObject HangerChiko;
    public GameObject HangerTrap;
    GameObject canvas;
    RectTransform canvasSize;
    GameObject svContent;
    GameObject trapContent;
    float hangerSpace;

    Vector3 startPosition;

    // Use this for initialization
    void Start () {
        hangerSpace = 260;
        svContent = GameObject.Find("Content");
        canvas = GameObject.Find("Canvas");
        canvasSize = canvas.GetComponent<RectTransform>();
        trapContent = GameObject.Find("TrapContent");

        startPosition.x = canvasSize.position.x;
        // Move new position.x to desired position
        startPosition.x -= canvasSize.rect.width * 0.9f;

        InstantiateChikoHanger();
    }
	
	// Update is called once per frame
	void Update () {
        
    }

    public void InstantiateChikoHanger()
    {
        for (int i = 0; i < /*PlayerInventory.ChikoTrapList.Count*/5; i++)
        {
            GameObject tempTrap = (GameObject)Instantiate(HangerTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 220), Quaternion.identity);
            tempTrap.transform.SetParent(trapContent.transform);
            tempTrap.transform.localScale = new Vector3(1, 1, 1);
        }

        for (int i = 0; i < /*PlayerInventory.ChikoList.Count*/4; i++)
        {
            GameObject tempChiko = (GameObject)Instantiate(HangerChiko, new Vector2(startPosition.x + i * hangerSpace, canvasSize.position.y * 0.8f), Quaternion.identity);
            tempChiko.transform.SetParent(svContent.transform);
            tempChiko.transform.localScale = new Vector3(1, 1, 1);
        }
    }
}
