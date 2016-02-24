using UnityEngine;
using System.Collections;

public class InventoryInstantiation : MonoBehaviour {

    public GameObject HangerChiko;
    GameObject canvas;
    RectTransform canvasSize;
    GameObject svContent;
    float hangerSpace;

    Vector3 startPosition;

    // Use this for initialization
    void Start () {
        hangerSpace = 220;
        svContent = GameObject.Find("Content");
        canvas = GameObject.Find("Canvas");
        canvasSize = canvas.GetComponent<RectTransform>();

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
        for (int i = 0; i < /*PlayerInventory.ChikoList.Count*/ 5; i++)
        {
            HangerChiko = (GameObject)Instantiate(HangerChiko, new Vector2(startPosition.x + i * hangerSpace, canvasSize.position.y * 0.8f), Quaternion.identity);
            HangerChiko.transform.SetParent(svContent.transform);
            HangerChiko.transform.localScale = new Vector3(1, 1, 1);
        }
    }
}
