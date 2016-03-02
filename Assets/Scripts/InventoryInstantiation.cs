using UnityEngine;
using System.Collections;

public class InventoryInstantiation : MonoBehaviour {

    public GameObject HangerChiko;
    GameObject canvas;
    RectTransform canvasSize;
    GameObject svContent;
    GameObject trapContent;
    float hangerSpace;

    Vector3 startPosition;

    public GameObject BearTrap;
    public GameObject TripWireTrap;
    public GameObject DecoyTrap;
    public GameObject WallTrap;
    public GameObject SpikeTrap;

    public Sprite DD1;
    public Sprite DD2;
    public Sprite DD3;
    public Sprite DD4;
    public Sprite DD5;
    public Sprite DD6;
    public Sprite DD7;
    public Sprite DD8;
    public Sprite DD9;
    public Sprite DD10;
    public Sprite DD11;
    public Sprite DD12;
    public Sprite DD13;
    public Sprite DD14;
    public Sprite DD15;
    public Sprite DD16;
    public Sprite DD17;
    public Sprite DD18;
    public Sprite DD19;
    public Sprite DD20;
    public Sprite DD21;
    public Sprite DD22;
    public Sprite DDP;
    public Sprite Tank1;
    public Sprite Tank2;
    public Sprite Tank3;
    public Sprite Tank4;
    public Sprite Tank5;
    public Sprite Tank6;
    public Sprite Tank7;
    public Sprite Tank8;
    public Sprite Tank9;
    public Sprite Tank10;
    public Sprite Tank11;
    public Sprite Tank12;
    public Sprite TankP;

    // Use this for initialization
    void Start () {
        hangerSpace = 400;
        svContent = GameObject.Find("Content");
        canvas = GameObject.Find("Canvas");
        canvasSize = canvas.GetComponent<RectTransform>();
        trapContent = GameObject.Find("TrapContent");

        startPosition.x = canvasSize.position.x;
        // Move new position.x to desired position
        startPosition.x -= canvasSize.rect.width * 1.3f;

        InstantiateChiko();
        InstantiateTraps();
    }
	
	// Update is called once per frame
	void Update () {
        
    }

    public void InstantiateChiko()
    {
        for (int i = 0; i < PlayerInventory.ChikoList.Count; i++)
        {
            Sprite ChikoImage = DD1;
            GameObject tempChiko = (GameObject)Instantiate(HangerChiko, new Vector2(startPosition.x + i * hangerSpace, canvasSize.position.y * 0.8f), Quaternion.identity);
            // Set Sprite Image
            switch (PlayerInventory.ChikoList[i])
            {
                case 1:
                    {
                        ChikoImage = DD1;
                    }
                    break;
                case 2:
                    {
                        ChikoImage = DD2;
                    }
                    break;
                case 3:
                    {
                        ChikoImage = DD3;
                    }
                    break;
                case 4:
                    {
                        ChikoImage = DD4;
                    }
                    break;
                case 5:
                    {
                        ChikoImage = DD5;
                    }
                    break;
                case 6:
                    {
                        ChikoImage = DD6;
                    }
                    break;
                case 7:
                    {
                        ChikoImage = DD7;
                    }
                    break;
                case 8:
                    {
                        ChikoImage = DD8;
                    }
                    break;
                case 9:
                    {
                        ChikoImage = DD9;
                    }
                    break;
                case 10:
                    {
                        ChikoImage = DD10;
                    }
                    break;
                case 11:
                    {
                        ChikoImage = DD11;
                    }
                    break;
                case 12:
                    {
                        ChikoImage = DD12;
                    }
                    break;
                case 13:
                    {
                        ChikoImage = DD13;
                    }
                    break;
                case 14:
                    {
                        ChikoImage = DD14;
                    }
                    break;
                case 15:
                    {
                        ChikoImage = DD15;
                    }
                    break;
                case 16:
                    {
                        ChikoImage = DD16;
                    }
                    break;
                case 17:
                    {
                        ChikoImage = DD17;
                    }
                    break;
                case 18:
                    {
                        ChikoImage = DD18;
                    }
                    break;
                case 19:
                    {
                        ChikoImage = DD19;
                    }
                    break;
                case 20:
                    {
                        ChikoImage = DD20;
                    }
                    break;
                case 21:
                    {
                        ChikoImage = DD21;
                    }
                    break;
                case 22:
                    {
                        ChikoImage = DD22;
                    }
                    break;
                case 23:
                    {
                        ChikoImage = DDP;
                    }
                    break;
                case 24:
                    {
                        ChikoImage = Tank1;
                    }
                    break;
                case 25:
                    {
                        ChikoImage = Tank2;
                    }
                    break;
                case 26:
                    {
                        ChikoImage = Tank3;
                    }
                    break;
                case 27:
                    {
                        ChikoImage = Tank4;
                    }
                    break;
                case 28:
                    {
                        ChikoImage = Tank5;
                    }
                    break;
                case 29:
                    {
                        ChikoImage = Tank6;
                    }
                    break;
                case 30:
                    {
                        ChikoImage = Tank7;
                    }
                    break;
                case 31:
                    {
                        ChikoImage = Tank8;
                    }
                    break;
                case 32:
                    {
                        ChikoImage = Tank9;
                    }
                    break;
                case 33:
                    {
                        ChikoImage = Tank10;
                    }
                    break;
                case 34:
                    {
                        ChikoImage = Tank11;
                    }
                    break;
                case 35:
                    {
                        ChikoImage = Tank12;
                    }
                    break;
                case 36:
                    {
                        ChikoImage = TankP;
                    }
                    break;
            }

            tempChiko.GetComponentInChildren<UnityEngine.UI.Image>().sprite = ChikoImage;
            tempChiko.transform.SetParent(svContent.transform);
            tempChiko.transform.localScale = new Vector3(1, 1, 1);
        }
    }

    public void InstantiateTraps()
    {

        for (int i = 0; i < PlayerInventory.ChikoTrapList.Count; i++)
        {
            GameObject tempTrap = BearTrap;
            if (PlayerInventory.ChikoTrapList[0] == 0)
                tempTrap = (GameObject)Instantiate(BearTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            else if (PlayerInventory.ChikoTrapList[0] == 1)
                tempTrap = (GameObject)Instantiate(TripWireTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            else if (PlayerInventory.ChikoTrapList[0] == 2)
                tempTrap = (GameObject)Instantiate(WallTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            else if (PlayerInventory.ChikoTrapList[0] == 3)
                tempTrap = (GameObject)Instantiate(SpikeTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            else if (PlayerInventory.ChikoTrapList[0] == 4)
                tempTrap = (GameObject)Instantiate(DecoyTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            //if (i == 0)
            //    tempTrap = (GameObject)Instantiate(BearTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            //else if (i == 1)
            //    tempTrap = (GameObject)Instantiate(TripWireTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            //else if (i == 2)
            //    tempTrap = (GameObject)Instantiate(DecoyTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            //else if (i == 3)
            //    tempTrap = (GameObject)Instantiate(WallTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);
            //else if (i == 4)
            //    tempTrap = (GameObject)Instantiate(SpikeTrap, new Vector2(canvasSize.position.x * 2.9f, canvasSize.position.y - i * 350), Quaternion.identity);

            tempTrap.transform.SetParent(trapContent.transform);
            tempTrap.transform.localScale = new Vector3(1, 1, 1);
        }
    }
}
