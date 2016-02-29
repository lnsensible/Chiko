using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class RankMenu : MonoBehaviour {

    public Text currentRank;
    Image currentRankIcon;
    public Text nextRank;
    Image nextRankIcon;

    public Image filledProgressBar;
    public Text RankBonuses;

    int rank;
    int progress;
    int bonusStat;
	// Use this for initialization
	void Start () {
        rank = PlayerPrefs.GetInt("rank");
        progress = PlayerPrefs.GetInt("rankProgress");
        bonusStat = rank * 5;

        //setting the initial text
        currentRank.text = "" + rank;
        nextRank.text = "" + (rank + 1);
	}
	
	// Update is called once per frame
	void Update () {
        filledProgressBar.fillAmount = progress / 10.0f;
       
        if(filledProgressBar.fillAmount == 1)
        {
            RankUp();
        }
        RankBonusesTEXT();

        //write to playerpref
        PlayerPrefs.SetInt("rank", rank);
	}

    void RankBonusesTEXT()
    {
        RankBonuses.text = "Current Bonus: \n Health + " + bonusStat + "% \n Attack +" + bonusStat + "%";
    }

    public void CHEAT_addprogress()
    {
        progress += 1;
    }

    void RankUp()
    {
        //chnage rank icons here
        int tempCurrentRank_int = int.Parse(currentRank.text);
        tempCurrentRank_int += 1;
        currentRank.text = "" + tempCurrentRank_int;

        int tempNextRank_int = int.Parse(nextRank.text);
        tempNextRank_int += 1;
        nextRank.text = "" + tempNextRank_int;

        rank += 1;
        bonusStat = rank * 5;
        progress = 0;
    }
}
