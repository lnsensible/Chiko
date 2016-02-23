using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Screen_MainMenu : MonoBehaviour
{

    //use this to transverse between screens. call the functions will do.
    public SceneNavigation sn;

    public Sprite playSelected;
    public Sprite pensSelected;
    public Sprite shopSelected;
    public Sprite noticeSelected;
    public Sprite exitSelected;

    private Vector3 scale;
    bool moving = false;
    Vector2 screenScale;
    bool clicked = false;
    bool Menu_2nd = false;
    bool RankScreen = false;
    bool Skillscreen = false;
    bool PreGameMenu = false;
    bool GoBackToOriginalState = false;

    RectTransform menu_2ndPos;
    RectTransform rankMenuPos;
    RectTransform skillMenuPos;
    RectTransform skillBtnPos;
    RectTransform rankBtnPos;
    RectTransform accountPos;
    RectTransform laserPos;
    RectTransform proceedPos;
    RectTransform re_equipPos;
    Text title;
    Text subTitle;
    // Use this for initialization    
    void Start()
    {
        screenScale.Set(Screen.width / 461, Screen.height / 288);
        clicked = false;
        moving = false;
        menu_2ndPos = GameObject.Find("2nd_menu").GetComponent<RectTransform>();
        rankMenuPos = GameObject.Find("Rank_menu").GetComponent<RectTransform>();
        skillMenuPos = GameObject.Find("Skill_menu").GetComponent<RectTransform>();
        skillBtnPos = GameObject.Find("Skill_Button").GetComponent<RectTransform>();
        accountPos = GameObject.Find("Account_Button").GetComponent<RectTransform>();
        laserPos = GameObject.Find("Background_design").GetComponent<RectTransform>();
        rankBtnPos = GameObject.Find("rank_Button").GetComponent<RectTransform>(); 
        proceedPos = GameObject.Find("Proceed_Button").GetComponent<RectTransform>();
        re_equipPos= GameObject.Find("Re-equip_Button").GetComponent<RectTransform>();
        title = GameObject.Find("Title").GetComponent<Text>();
        subTitle = GameObject.Find("subTitle").GetComponent<Text>();
    }

    int clickedOn = 0;
    // Update is called once per frame
    void Update()
    {
        animate();
        if (PreGameMenu == true)
        {
            title.enabled = false;
            subTitle.enabled = false;
        }
        else
        {
            title.enabled = true;
            subTitle.enabled = true;
        }
        if (moving == false && clicked == true)
        {
            switch (clickedOn)
            {
                case 1:
                    sn.GoToGamePlay();
                    break;
                case 2:
                    sn.GoToShop();
                    break;
                case 3:
                    sn.GoToInventory();
                    break;
                case 4:
                    sn.GoToNoticeBoard();
                    break;
                case 5:
                    sn.GoToExit();
                    break;
                default:
                    break;
            }
        }
    }

    public void RankPressed()
    {
        RankScreen = !RankScreen;

        skillBtnPos.SetAsFirstSibling();

        rankMenuPos.SetAsLastSibling();
        rankBtnPos.SetAsLastSibling();
    }
    
    void MoveButtons()
    {
        moving = true;
        clicked = true;
    }

    public void ShopPressed()
    {
        //swap meshes   
        Button shop = GameObject.Find("Shop_Button").GetComponent<Button>();
        shop.image.overrideSprite = shopSelected;
        Invoke("MoveButtons", 0.5f);
        clickedOn = 2;
    }
    public void PenPressed()
    {
        //swap meshes
        Button pens = GameObject.Find("Pen_Button").GetComponent<Button>();
        pens.image.overrideSprite = pensSelected;
        Invoke("MoveButtons", 0.5f);
        clickedOn = 3;
    }
    public void NoticeBoardPressed()
    {
        //swap meshes
        Button noticeboard = GameObject.Find("NoticeBoard_Button").GetComponent<Button>();
        noticeboard.image.overrideSprite = noticeSelected;
        Invoke("MoveButtons", 0.5f);
        clickedOn = 4;
    }
    public void ExitPressed()
    {
        //swap meshes
        Button exit = GameObject.Find("Exit_Button").GetComponent<Button>(); ;
        exit.image.overrideSprite = exitSelected;
        Invoke("MoveButtons", 0.5f);
        clickedOn = 5;
    }

    public void AccountPressed()
    {
        Menu_2nd = true;
    }
    public void AccountClosePressed()
    {
        Menu_2nd = false;
    }

    public void SkillPressed() 
    {
        Skillscreen = !Skillscreen;
        skillMenuPos.SetAsLastSibling();
        skillBtnPos.SetAsLastSibling();
        rankBtnPos.SetAsFirstSibling();
    }
    
    public void PreGameSelectionPressed()
    {
        //swap meshes
        Button play = GameObject.Find("Play_Button").GetComponent<Button>();
        play.image.overrideSprite = playSelected;
        MoveButtons();
        PreGameMenu = !PreGameMenu;
        if(PreGameMenu == true)
        {
            GoBackToOriginalState = false;
        }
        else
        {
            GoBackToOriginalState = true;
        }
    }
    public void ReequipPressed()
    {
        PreGameMenu = false;
        Invoke("PenPressed", 0.2f);
    }
    public void ProceedPressed()
    {
        clickedOn = 1;
    }
    void PreGameSelectionBehaviour()
    {
        //making selected chiko images clearer in the back ground
        if(PreGameMenu == true)
        {
            foreach (GameObject selected in GameObject.FindGameObjectsWithTag("Selected Chikos"))
            {
                RectTransform size = selected.GetComponent<RectTransform>();
                size.localScale = Vector3.Lerp(size.localScale, new Vector3(0.6f, 0.6f, 0.6f), 0.2f);
                Image pic = selected.GetComponent<Image>();
                Color c = pic.color;
                c.a += 0.05f;
                pic.color = c;
            }           
        }
        else
        {
            foreach (GameObject selected in GameObject.FindGameObjectsWithTag("Selected Chikos"))
            {
                RectTransform size = selected.GetComponent<RectTransform>();
                size.localScale = Vector3.Lerp(size.localScale, new Vector3(1.0f, 1.0f, 1.0f), 0.2f);
                Image pic = selected.GetComponent<Image>();
                Color c = pic.color;
                if(c.a > 0.28f)
                    c.a -= 0.05f;
                pic.color = c;
            }  
        }
    }

    void animate()
    {
        if (PreGameMenu == true)
        {

            proceedPos.localPosition = Vector3.Lerp(proceedPos.localPosition, new Vector3(proceedPos.localPosition.x, -100, 0), 0.2f);
            re_equipPos.localPosition = Vector3.Lerp(re_equipPos.localPosition, new Vector3(re_equipPos.localPosition.x, -100, 0), 0.2f);
            accountPos.localPosition = Vector3.Lerp(accountPos.localPosition, new Vector3(accountPos.localPosition.x, -157, 0), 0.2f);
            PreGameSelectionBehaviour();
        }
        else
        {
            if(GoBackToOriginalState == true)
            {
                PreGameSelectionBehaviour();
            }
            foreach (GameObject buttons in GameObject.FindGameObjectsWithTag("Navigation Buttons"))
            {
                RectTransform pos = buttons.GetComponent<RectTransform>();
                pos.localScale = Vector3.Lerp(pos.localScale, new Vector3(1.0f, 1.0f, 1.0f), 0.2f);
                pos.localPosition = Vector3.Lerp(pos.localPosition, new Vector3(pos.localPosition.x, -1, 0), 0.2f);

                Text Txt = buttons.GetComponentInChildren<Text>();
                if (Txt != null)
                    Txt.enabled = true;
                
                if (pos.localPosition.y <= -1)
                {
                    pos.localPosition.Set(pos.localPosition.x, -1, pos.localPosition.z);
                    laserPos.localPosition.Set(laserPos.localPosition.x, -1, laserPos.localPosition.z);

                    moving = false;
                    GoBackToOriginalState = false;
                }
            }

            laserPos.localPosition = Vector3.Lerp(laserPos.localPosition, new Vector3(laserPos.localPosition.x, -1, 0), 0.2f);
            accountPos.localPosition = Vector3.Lerp(accountPos.localPosition, new Vector3(accountPos.localPosition.x, -100, 0), 0.2f);
            proceedPos.localPosition = Vector3.Lerp(proceedPos.localPosition, new Vector3(proceedPos.localPosition.x, -157, 0), 0.2f);
            re_equipPos.localPosition = Vector3.Lerp(re_equipPos.localPosition, new Vector3(re_equipPos.localPosition.x, -157, 0), 0.2f);
        }

        if (Menu_2nd == true)
        {
            menu_2ndPos.localPosition = Vector3.Lerp(menu_2ndPos.localPosition, new Vector3(menu_2ndPos.localPosition.x, 56, 0), 0.2f);
            if (Skillscreen == true)
            {
                skillBtnPos.localPosition = Vector3.Lerp(skillBtnPos.localPosition, new Vector3(-172, skillBtnPos.localPosition.y, 0), 0.2f);
                skillMenuPos.localPosition = Vector3.Lerp(skillMenuPos.localPosition, new Vector3(50, skillMenuPos.localPosition.y, 0), 0.2f);
            }
            else
            {
                
                skillBtnPos.localPosition = Vector3.Lerp(skillBtnPos.localPosition, new Vector3(-88, skillBtnPos.localPosition.y, 0), 0.2f);
                skillMenuPos.localPosition = Vector3.Lerp(skillMenuPos.localPosition, new Vector3(900, skillMenuPos.localPosition.y, 0), 0.2f);
            }
            if (RankScreen == true)
            {
                rankBtnPos.localPosition = Vector3.Lerp(rankBtnPos.localPosition, new Vector3(172, rankBtnPos.localPosition.y, 0), 0.2f);
                rankMenuPos.localPosition = Vector3.Lerp(rankMenuPos.localPosition, new Vector3(0, rankMenuPos.localPosition.y, 0), 0.2f);
            }
            else
            {
                rankBtnPos.localPosition = Vector3.Lerp(rankBtnPos.localPosition, new Vector3(88, rankBtnPos.localPosition.y, 0), 0.2f);
                rankMenuPos.localPosition = Vector3.Lerp(rankMenuPos.localPosition, new Vector3(-440, rankMenuPos.localPosition.y, 0), 0.2f);
            }
        }
        else
        {
            menu_2ndPos.localPosition = Vector3.Lerp(menu_2ndPos.localPosition, new Vector3(menu_2ndPos.localPosition.x, 255, 0), 0.2f);
        }
        

        if (moving == true && GoBackToOriginalState == false)
        {
            foreach (GameObject buttons in GameObject.FindGameObjectsWithTag("Navigation Buttons"))
            {
                RectTransform pos = buttons.GetComponent<RectTransform>();
                pos.localPosition = Vector3.Lerp(pos.localPosition, new Vector3(pos.localPosition.x, 91, 0), 0.2f);
                pos.localScale = Vector3.Lerp(pos.localScale, new Vector3(0.66f, 0.66f, 0.66f), 0.2f);
                if (PreGameMenu == true)
                {
                    Text Txt = buttons.GetComponentInChildren<Text>();
                    if (Txt != null)
                        Txt.enabled = false;
                }
                if (pos.localPosition.y >= 90)
                {
                    pos.localPosition.Set(pos.localPosition.x, 90, pos.localPosition.z);
                    laserPos.localPosition.Set(laserPos.localPosition.x, 90, laserPos.localPosition.z);
                    
                    moving = false;
                }
            }

            laserPos.localPosition = Vector3.Lerp(laserPos.localPosition, new Vector3(laserPos.localPosition.x, 91, 0), 0.2f);
            accountPos.localPosition = Vector3.Lerp(accountPos.localPosition, new Vector3(accountPos.localPosition.x, -157, 0), 0.2f);
        }
        
    }
}
