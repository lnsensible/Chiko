using UnityEngine;
using System.Collections;

//<! Use this to call themusic manager to play the BGM, this only PLAYS the BGM, not edit it />
public class PlayBGM : MonoBehaviour {

	// Use this for initialization
    void Start () 
    {
        if (Application.loadedLevel == 0)
            PlayMainMenuBGM();

        if (Application.loadedLevel == 7)
            MusicManager.PlayVictoryScreen();
	}
   
    public void PlayMainMenuBGM()
    {
        MusicManager.PlayMainMenuBGM();
    }

    public void PlayGameBGM()
    {
        MusicManager.PlayGameBGM();
    }
}
