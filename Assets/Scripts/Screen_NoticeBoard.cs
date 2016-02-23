using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Screen_NoticeBoard : MonoBehaviour {

    //use this to transverse between screens. call the functions will do.
    public SceneNavigation sn;

    public Sprite playSelected;
    public Sprite pensSelected;
    public Sprite shopSelected;
    public Sprite noticeSelected;
    public Sprite exitSelected;

    RectTransform playPos;
    RectTransform penPos;
    RectTransform NoticeboardPos;
    RectTransform ExitPos;
    RectTransform ShopPos;
    RectTransform laserPos;
    bool ShowNoticeBoard = true;
    RectTransform NoticeBoardPos;

    bool moving = false;
    bool moveButtonsback = false;
    int clickedOn = 0;
	// Use this for initialization
	void Start () {
        NoticeBoardPos = GameObject.Find("NoticeBoard").GetComponent<RectTransform>();
        playPos = GameObject.Find("Play_Button").GetComponent<RectTransform>();
        penPos = GameObject.Find("Pen_Button").GetComponent<RectTransform>();
        NoticeboardPos = GameObject.Find("NoticeBoard_Button").GetComponent<RectTransform>();
        ExitPos = GameObject.Find("Exit_Button").GetComponent<RectTransform>();
        ShopPos = GameObject.Find("Shop_Button").GetComponent<RectTransform>();
        laserPos = GameObject.Find("Background_design").GetComponent<RectTransform>();
	}
	
	// Update is called once per frame
	void Update () {
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
        if(ShowNoticeBoard == true)
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
        if(moveButtonsback == true)
        {
            if(clickedOn == 1 && clickedOn == 3 && clickedOn == 4)
            {
                playPos.localPosition = Vector3.Lerp(playPos.localPosition, new Vector3(playPos.localPosition.x, -1, 0), 0.2f);
                playPos.localScale = Vector3.Lerp(playPos.localScale, new Vector3(1.5f, 1.5f, 1.5f), 0.2f);
                penPos.localPosition = Vector3.Lerp(penPos.localPosition, new Vector3(penPos.localPosition.x, -1, 0), 0.2f);
                penPos.localScale = Vector3.Lerp(penPos.localScale, new Vector3(1.5f, 1.5f, 1.5f), 0.2f);
                NoticeboardPos.localPosition = Vector3.Lerp(NoticeboardPos.localPosition, new Vector3(NoticeboardPos.localPosition.x, -1, 0), 0.2f);
                NoticeboardPos.localScale = Vector3.Lerp(NoticeboardPos.localScale, new Vector3(1.5f, 1.5f, 1.5f), 0.2f);
                ExitPos.localPosition = Vector3.Lerp(ExitPos.localPosition, new Vector3(ExitPos.localPosition.x, -1, 0), 0.2f);
                ExitPos.localScale = Vector3.Lerp(ExitPos.localScale, new Vector3(1.5f, 1.5f, 1.5f), 0.2f);
                ShopPos.localPosition = Vector3.Lerp(ShopPos.localPosition, new Vector3(ShopPos.localPosition.x, -1, 0), 0.2f);
                ShopPos.localScale = Vector3.Lerp(ShopPos.localScale, new Vector3(1.5f, 1.5f, 1.5f), 0.2f);
                laserPos.localPosition = Vector3.Lerp(laserPos.localPosition, new Vector3(laserPos.localPosition.x, -1, 0), 0.2f);
                if (playPos.localPosition.y <= 0)
                {
                    playPos.localPosition.Set(playPos.localPosition.x, 0, playPos.localPosition.z);
                    penPos.localPosition.Set(penPos.localPosition.x, 0, penPos.localPosition.z);
                    NoticeboardPos.localPosition.Set(NoticeboardPos.localPosition.x, 0, NoticeboardPos.localPosition.z);
                    ExitPos.localPosition.Set(ExitPos.localPosition.x, 0, ExitPos.localPosition.z);
                    ShopPos.localPosition.Set(ShopPos.localPosition.x, 0, ShopPos.localPosition.z);
                    laserPos.localPosition.Set(laserPos.localPosition.x, 0, laserPos.localPosition.z);
                    Invoke("MoveToNextScene", 0.2f);
                }
            }
            else 
            {
                Invoke("MoveToNextScene", 0.2f);
            }
        }
    }
}
