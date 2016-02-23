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

    //when there are thing moving on the screen.
    bool moving = false;
    //moving buttons up 
    bool b_ButtonsUp = false;
    
    //showing the 2nd menu
    bool b_2ndMenu = false;
    //showing the rank page
    bool b_RankScreen = false;
    //showing the skill page
    bool b_SkillScreen = false;
    
    //showing the pregame selection mode
    bool b_preGame = false;
    
    // Use this for initialization    
    void Start()
    {
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
        //when buttons reach the top and buttons not moving then go to the next screen and not in preGame selection mode
        if (b_ButtonsUp == true && moving == false && b_preGame == false)
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
    void MovingButtonsUp()
    {
        b_ButtonsUp = true;
        moving = true;
    }
    public void ShopPressed()
    {
        //swap meshes   
        Button shop = GameObject.Find("Shop_Button").GetComponent<Button>();
        shop.image.overrideSprite = shopSelected;
        Invoke("MovingButtonsUp", 0.5f);
        clickedOn = 2;
    }
    public void PenPressed()
    {
        //swap meshes
        Button pens = GameObject.Find("Pen_Button").GetComponent<Button>();
        pens.image.overrideSprite = pensSelected;
        Invoke("MovingButtonsUp", 0.5f);
        clickedOn = 3;
    }
    public void NoticeBoardPressed()
    {
        //swap meshes
        Button noticeboard = GameObject.Find("NoticeBoard_Button").GetComponent<Button>();
        noticeboard.image.overrideSprite = noticeSelected;
        Invoke("MovingButtonsUp", 0.5f);
        clickedOn = 4;
    }
    public void ExitPressed()
    {
        //swap meshes
        Button exit = GameObject.Find("Exit_Button").GetComponent<Button>(); ;
        exit.image.overrideSprite = exitSelected;
        Invoke("MovingButtonsUp", 0.5f);
        clickedOn = 5;
    }

    public void AccountPressed()
    {
        //bringing down the 2nd menu
        b_2ndMenu = !b_2ndMenu;
        //moving objects
        moving = true;
    }

    public void RankPressed()
    {
        Transform btn = GameObject.Find("Skill_Button").GetComponent<Transform>();
        btn.SetAsFirstSibling();
        Transform rankBtn = GameObject.Find("rank_Button").GetComponent<Transform>();
        rankBtn.SetAsLastSibling();
        b_RankScreen = !b_RankScreen;
    }
    public void SkillPressed()
    {
        Transform btn = GameObject.Find("rank_Button").GetComponent<Transform>();
        btn.SetAsFirstSibling();
        Transform skillBtn = GameObject.Find("Skill_Button").GetComponent<Transform>();
        skillBtn.SetAsLastSibling();
        b_SkillScreen = !b_SkillScreen;
    }
    public void PreGameScreenPressed()
    {
        //if not in preGame selection - start it
        if(b_preGame == false)
        {
            Invoke("MovingButtonsUp", 0.2f);
        }
        else
        {
            //set the buttons to move back down
            b_ButtonsUp = false;
            moving = true;
        }
        b_preGame = !b_preGame;
    }

    public void ReEquipPressed()
    {
        b_preGame = false;
        sn.GoToInventory();
    }

    public void ProceedPressed()
    {
        clickedOn = 1;
        b_preGame = false;
        sn.GoToGamePlay();
    }

    void animate()
    {
        //bringing down the 2nd menu
        if(b_2ndMenu == true)
        {
            menu_2ndPos.localPosition = Vector3.Lerp(menu_2ndPos.localPosition, new Vector3(menu_2ndPos.localPosition.x, 60, 0), 0.2f);    
            //if showing the rank screen 
            if(b_RankScreen == true)
            {
                //bring screen in from left side 
                rankMenuPos.localPosition = Vector3.Lerp(rankMenuPos.localPosition, new Vector3(1, rankMenuPos.localPosition.y, 0), 0.2f);    
                //moving the rank button to the right
                rankBtnPos.localPosition = Vector3.Lerp(rankBtnPos.localPosition, new Vector3(166, rankBtnPos.localPosition.y, 0), 0.2f);    
            }
            else
            {
                //putting it back  - screen
                rankMenuPos.localPosition = Vector3.Lerp(rankMenuPos.localPosition, new Vector3(-434, rankMenuPos.localPosition.y, 0), 0.2f);    
                //- button
                rankBtnPos.localPosition = Vector3.Lerp(rankBtnPos.localPosition, new Vector3(88, rankBtnPos.localPosition.y, 0), 0.2f);    
            }
            //if showing the skill screen
            if(b_SkillScreen == true)
            {
                //bring screen in
                skillMenuPos.localPosition = Vector3.Lerp(skillMenuPos.localPosition, new Vector3(54, skillMenuPos.localPosition.y, 0), 0.2f);    
                //moving skill button to left a bit more
                skillBtnPos.localPosition = Vector3.Lerp(skillBtnPos.localPosition, new Vector3(-166, skillBtnPos.localPosition.y, 0), 0.2f);    
            }
            else
            {
                //putting it back - screen
                skillMenuPos.localPosition = Vector3.Lerp(skillMenuPos.localPosition, new Vector3(882, skillMenuPos.localPosition.y, 0), 0.2f);  
                // - button
                skillBtnPos.localPosition = Vector3.Lerp(skillBtnPos.localPosition, new Vector3(-88, skillBtnPos.localPosition.y, 0), 0.2f);    
            }
        }
        //putting it back up
        else
        {
            menu_2ndPos.localPosition = Vector3.Lerp(menu_2ndPos.localPosition, new Vector3(menu_2ndPos.localPosition.x, 293, 0), 0.2f);
        }


        //moving the button to the top of the screen
        if (b_ButtonsUp == true)
        {
            //title and sub text fading out effect
            Color c = title.color;
            c.a -= 0.1f;
            title.color = c;
            subTitle.color = c;


            foreach (GameObject buttons in GameObject.FindGameObjectsWithTag("Navigation Buttons"))
            {
                RectTransform pos = buttons.GetComponent<RectTransform>();
                pos.localPosition = Vector3.Lerp(pos.localPosition, new Vector3(pos.localPosition.x, 91, 0), 0.2f);
                pos.localScale = Vector3.Lerp(pos.localScale, new Vector3(0.66f, 0.66f, 0.66f), 0.2f);

                Text Txt = buttons.GetComponentInChildren<Text>();
                if (Txt != null)
                    Txt.enabled = false;
                
                if (pos.localPosition.y >= 90)
                {
                    pos.localPosition.Set(pos.localPosition.x, 90, pos.localPosition.z);
                    laserPos.localPosition.Set(laserPos.localPosition.x, 90, laserPos.localPosition.z);
                    
                    moving = false;
                }
            }

            laserPos.localPosition = Vector3.Lerp(laserPos.localPosition, new Vector3(laserPos.localPosition.x, 91, 0), 0.2f);
            accountPos.localPosition = Vector3.Lerp(accountPos.localPosition, new Vector3(accountPos.localPosition.x, -157, 0), 0.2f);
            
            if(b_preGame == true)
            {
                //move the proceed and re-equip button up
                proceedPos.localPosition = Vector3.Lerp(proceedPos.localPosition, new Vector3(proceedPos.localPosition.x, -100, 0), 0.2f);
                re_equipPos.localPosition = Vector3.Lerp(re_equipPos.localPosition, new Vector3(re_equipPos.localPosition.x, -100, 0), 0.2f);
                //bring foward the selected chiko stuff.
                foreach(GameObject selected in GameObject.FindGameObjectsWithTag("Selected Chikos"))
                {
                    Image pic = selected.GetComponent<Image>();
                    Color pc = pic.color;
                    pc.a += 0.2f;
                    pic.color = pc;

                    selected.transform.localScale = Vector3.Lerp(selected.transform.localScale, new Vector3(0.66f, 0.66f, 0.66f), 0.2f);
                }
            }
            
        }
        else
        {
            //moving the buttons back down
            if( moving == true)
            {
                if(b_preGame == false)
                {
                    //moving the proceed and the re-equip button down
                    proceedPos.localPosition = Vector3.Lerp(proceedPos.localPosition, new Vector3(proceedPos.localPosition.x, -157, 0), 0.2f);
                    re_equipPos.localPosition = Vector3.Lerp(re_equipPos.localPosition, new Vector3(re_equipPos.localPosition.x, -157, 0), 0.2f);

                    //bring foward the selected chiko stuff.
                    foreach (GameObject selected in GameObject.FindGameObjectsWithTag("Selected Chikos"))
                    {
                        selected.transform.localScale = Vector3.Lerp(selected.transform.localScale, new Vector3(1.0f, 1.0f, 1.0f), 0.2f);
                        Image pic = selected.GetComponent<Image>();                        
                        Color c = pic.color;
                        c.a = 0.28f;
                        pic.color = c;
                    }
                }

                //moving the navigation buttons back
                foreach (GameObject buttons in GameObject.FindGameObjectsWithTag("Navigation Buttons"))
                {
                    RectTransform pos = buttons.GetComponent<RectTransform>();
                    pos.localPosition = Vector3.Lerp(pos.localPosition, new Vector3(pos.localPosition.x, -1, 0), 0.2f);
                    pos.localScale = Vector3.Lerp(pos.localScale, new Vector3(1.0f, 1.0f, 1.0f), 0.2f);

                    Text Txt = buttons.GetComponentInChildren<Text>();
                    if (Txt != null)
                        Txt.enabled = true;

                    if (pos.localPosition.y <= 0)
                    {
                        pos.localPosition.Set(pos.localPosition.x, 0, pos.localPosition.z);
                        laserPos.localPosition.Set(laserPos.localPosition.x, 0, laserPos.localPosition.z);

                        moving = false;
                    }
                }

                laserPos.localPosition = Vector3.Lerp(laserPos.localPosition, new Vector3(laserPos.localPosition.x, -1, 0), 0.2f);
                accountPos.localPosition = Vector3.Lerp(accountPos.localPosition, new Vector3(accountPos.localPosition.x, -101, 0), 0.2f);
            }
        }
    }
}
