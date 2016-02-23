using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Screen_NoticeBoard : MonoBehaviour
{

    //use this to transverse between screens. call the functions will do.
    public SceneNavigation sn;

    public Sprite playSelected;
    public Sprite pensSelected;
    public Sprite shopSelected;
    public Sprite noticeSelected;
    public Sprite exitSelected;

    RectTransform laserPos;
    bool ShowNoticeBoard = true;
    RectTransform NoticeBoardPos;

    bool moving = false;
    bool moveButtonsback = false;
    int clickedOn = 0;
    // Use this for initialization
    void Start()
    {
        NoticeBoardPos = GameObject.Find("NoticeBoard").GetComponent<RectTransform>();
        laserPos = GameObject.Find("Background_design").GetComponent<RectTransform>();
    }

    // Update is called once per frame
    void Update()
    {
        Animate();
        if (moving == false && ShowNoticeBoard == false)
        {
            switch (clickedOn)
            {
                case 1:
                    sn.GoToMainMenu();
                    break;
                case 2:
                    sn.GoToInventory();
                    break;
                case 3:
                    sn.GoToMainMenu();
                    break;
                case 4:
                    sn.GoToMainMenu();
                    break;
                case 5:
                    sn.GoToShop();
                    break;
            }
        }
    }
    void MoveToNextScene()
    {
        moving = false;
    }
    public void ShopPressed()
    {
        Button shop = GameObject.Find("Shop_Button").GetComponent<Button>();
        shop.image.overrideSprite = shopSelected;
        Button noticeboard = GameObject.Find("NoticeBoard_Button").GetComponent<Button>();
        noticeboard.image.overrideSprite = noticeSelected;
        moving = true;
        ShowNoticeBoard = false;
        clickedOn = 5;
    }
    public void PlayPressed()
    {
        Button play = GameObject.Find("Play_Button").GetComponent<Button>();
        play.image.overrideSprite = playSelected;
        Button noticeboard = GameObject.Find("NoticeBoard_Button").GetComponent<Button>();
        noticeboard.image.overrideSprite = noticeSelected;
        moving = true;
        ShowNoticeBoard = false;
        clickedOn = 1;
    }
    public void PenPressed()
    {
        Button pens = GameObject.Find("Pen_Button").GetComponent<Button>();
        pens.image.overrideSprite = pensSelected;
        Button noticeboard = GameObject.Find("NoticeBoard_Button").GetComponent<Button>();
        noticeboard.image.overrideSprite = noticeSelected;
        moving = true;
        ShowNoticeBoard = false;
        clickedOn = 2;
    }
    public void NoticeBoardPressed()
    {
        moving = true;
        ShowNoticeBoard = false;
        clickedOn = 3;
    }
    public void ExitPressed()
    {
        Button exit = GameObject.Find("Exit_Button").GetComponent<Button>(); ;
        exit.image.overrideSprite = exitSelected;
        Button noticeboard = GameObject.Find("NoticeBoard_Button").GetComponent<Button>();
        noticeboard.image.overrideSprite = noticeSelected;
        moving = true;
        ShowNoticeBoard = false;
        clickedOn = 4;
    }

    void Animate()
    {
        if (ShowNoticeBoard == true)
        {
            NoticeBoardPos.localPosition = Vector3.Lerp(NoticeBoardPos.localPosition, new Vector3(NoticeBoardPos.localPosition.x, -74, 0), 0.2f);
        }
        else
        {
            NoticeBoardPos.localPosition = Vector3.Lerp(NoticeBoardPos.localPosition, new Vector3(NoticeBoardPos.localPosition.x, -310, 0), 0.2f);
            if (NoticeBoardPos.localPosition.y >= -309)
            {
                moveButtonsback = true;
            }
        }
        if (moveButtonsback == true)
        {
            if (clickedOn == 1 || clickedOn == 3 || clickedOn == 4)
            {

                foreach (GameObject buttons in GameObject.FindGameObjectsWithTag("Navigation Buttons"))
                {
                    RectTransform pos = buttons.GetComponent<RectTransform>();
                    pos.localPosition = Vector3.Lerp(pos.localPosition, new Vector3(pos.localPosition.x, -1, 0), 0.2f);
                    pos.localScale = Vector3.Lerp(pos.localScale, new Vector3(1.5f, 1.5f, 1.5f), 0.2f);
                    if (pos.localPosition.y <= 0)
                    {
                        pos.localPosition.Set(pos.localPosition.x, 0, pos.localPosition.z);
                        laserPos.localPosition.Set(laserPos.localPosition.x, 0, laserPos.localPosition.z);
                        //Invoke("MoveToNextScene", 0.2f);
                        moving = false;
                    }
                }
                laserPos.localPosition = Vector3.Lerp(laserPos.localPosition, new Vector3(laserPos.localPosition.x, -1, 0), 0.2f);
            }
            else
            {
                Invoke("MoveToNextScene", 0.2f);
            }
        }
    }
}
