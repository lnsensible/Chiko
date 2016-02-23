using UnityEngine;
using System.Collections;

public class SceneNavigation : MonoBehaviour {
        /*
        * THIS IS FOR GOING INBETWEEN SCENES
        *   Just call the functions to go the page you want
        */  
    public void GoToMainMenu()
    {
        Application.LoadLevel("menuscreen");
    }
    public void GoToGamePlay()
    {
        Application.LoadLevel("gamescreen");
    }
    public void GoToShop()
    {
        Application.LoadLevel("shopscreen");
    }
    public void GoToSkillPage()
    {
        Application.LoadLevel(3);
    }
    public void GoToInventory()
    {
        Application.LoadLevel("inventoryscreen");
    }
    public void GoToExit()
    {
        Application.Quit();
        // System.Diagnostics.Process.GetCurrentProcess().Kill();
    }
    public void GoToNoticeBoard()
    {
        Application.LoadLevel("noticeboardscreen");
    }
    public void GoToRankPage()
    {
        Application.LoadLevel("rankscreen");
    }
    
}
