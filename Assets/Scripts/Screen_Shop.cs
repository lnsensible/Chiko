﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Screen_Shop : MonoBehaviour {

    //use this to transverse between screens. call the functions will do.
    public SceneNavigation sn;

    public Sprite playSelected;
    public Sprite pensSelected;
    public Sprite shopSelected;
    public Sprite noticeSelected;
    public Sprite exitSelected;

    public Text aucText;

    RectTransform playPos;
    RectTransform penPos;
    RectTransform NoticeboardPos;
    RectTransform ExitPos;
    RectTransform ShopPos;
    RectTransform laserPos;
    bool menu_2nd = true;
    RectTransform ShopScreenPos;
    bool moving = false;
    int clickedOn = 0;
    bool moveButtonsback = false;

    //from 2nd menu
    RectTransform shopTabButtonPos;
    RectTransform auctTabButtonPos;

    //shop tab vairables
    bool showShopTab = false;
    RectTransform shopTabPos;

    //auction tab variables
    bool showAuctTab = false;
    RectTransform AuctTabPos;

	// Use this for initialization
	void Start () {
        ShopScreenPos = GameObject.Find("2nd menu").GetComponent<RectTransform>();
        shopTabPos = GameObject.Find("Shop Tab").GetComponent<RectTransform>();
        shopTabButtonPos = GameObject.Find("ShopTab_Button").GetComponent<RectTransform>();
        AuctTabPos = GameObject.Find("Auction Tab").GetComponent<RectTransform>();
        auctTabButtonPos = GameObject.Find("AuctionTab_Button").GetComponent<RectTransform>();     
            
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
        if (moving == false && menu_2nd == false)
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
                    sn.GoToNoticeBoard();
                    break;
                case 5:
                    sn.GoToMainMenu();
                    break;
            }
        }
	}
    void MoveToNextScene()
    {
        moving = false;
    }
    public void PlayPressed()
    {
        Button play = GameObject.Find("Play_Button").GetComponent<Button>();
        play.image.overrideSprite = playSelected;
        Button shop = GameObject.Find("Shop_Button").GetComponent<Button>();
        shop.image.overrideSprite = shopSelected;
        moving = true;
        menu_2nd = false;
        clickedOn = 1;
    }
    public void PenPressed()
    {
        Button pens = GameObject.Find("Pen_Button").GetComponent<Button>();
        pens.image.overrideSprite = pensSelected;
        Button shop = GameObject.Find("Shop_Button").GetComponent<Button>();
        shop.image.overrideSprite = shopSelected;
        moving = true;
        menu_2nd = false;
        clickedOn = 2;
    }
    public void ShopPressed()
    {
        moving = true;
        menu_2nd = false;
        clickedOn = 3;
    }
    public void NoticeBoardPressed()
    {
        Button noticeboard = GameObject.Find("NoticeBoard_Button").GetComponent<Button>();
        noticeboard.image.overrideSprite = noticeSelected;
        Button shop = GameObject.Find("Shop_Button").GetComponent<Button>();
        shop.image.overrideSprite = shopSelected;
        moving = true;
        menu_2nd = false;
        clickedOn = 4;
    }
    public void ExitPressed()
    {
        Button exit = GameObject.Find("Exit_Button").GetComponent<Button>();
        exit.image.overrideSprite = exitSelected;
        Button shop = GameObject.Find("Shop_Button").GetComponent<Button>();
        shop.image.overrideSprite = noticeSelected;
        moving = true;
        menu_2nd = false;
        clickedOn = 5;
    }
    public void ShopTabPressed()
    {
        showShopTab = !showShopTab;
        shopTabButtonPos.SetAsLastSibling();
        auctTabButtonPos.SetAsFirstSibling();
    }

    public void AuctionTabPressed()
    {
        showAuctTab = !showAuctTab;
        auctTabButtonPos.SetAsLastSibling();
        shopTabButtonPos.SetAsFirstSibling();
    }

    void Animate()
    {
        if(showAuctTab == true)
        {
            auctTabButtonPos.localPosition = Vector3.Lerp(auctTabButtonPos.localPosition, new Vector3(180, auctTabButtonPos.localPosition.y), 0.2f);
            AuctTabPos.localPosition = Vector3.Lerp(AuctTabPos.localPosition, new Vector3(0, AuctTabPos.localPosition.y), 0.2f);
            if (AuctTabPos.localPosition.x > -20)
            {
                aucText.text = "";
            }
        }
        else
        {
            auctTabButtonPos.localPosition = Vector3.Lerp(auctTabButtonPos.localPosition, new Vector3(102, auctTabButtonPos.localPosition.y), 0.2f);
            AuctTabPos.localPosition = Vector3.Lerp(AuctTabPos.localPosition, new Vector3(-442, AuctTabPos.localPosition.y), 0.2f);
            if (AuctTabPos.localPosition.x < -20)
            {
                aucText.text = "Auction";
            }
        }
        if(showShopTab == true)
        {
            shopTabButtonPos.localPosition = Vector3.Lerp(shopTabButtonPos.localPosition, new Vector3(-180, shopTabButtonPos.localPosition.y), 0.2f);
            shopTabPos.localPosition = Vector3.Lerp(shopTabPos.localPosition, new Vector3(0, shopTabPos.localPosition.y), 0.2f);
        }
        else 
        {
            shopTabButtonPos.localPosition = Vector3.Lerp(shopTabButtonPos.localPosition, new Vector3(-109, shopTabButtonPos.localPosition.y), 0.2f);
            shopTabPos.localPosition = Vector3.Lerp(shopTabPos.localPosition, new Vector3(436, shopTabPos.localPosition.y), 0.2f);
        }
        if (menu_2nd == true)
        {
            ShopScreenPos.localPosition = Vector3.Lerp(ShopScreenPos.localPosition, new Vector3(ShopScreenPos.localPosition.x, -74, 0), 0.2f);
        }
        else
        {
            ShopScreenPos.localPosition = Vector3.Lerp(ShopScreenPos.localPosition, new Vector3(ShopScreenPos.localPosition.x, -310, 0), 0.2f);
            if (ShopScreenPos.localPosition.y >= -309)
            {
                moveButtonsback = true;
            }
        }
        if(moveButtonsback == true)
        {
            if (clickedOn == 1 && clickedOn == 3 && clickedOn == 5)
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
                if (playPos.localPosition.y >= 0)
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
