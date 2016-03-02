using UnityEngine;
using System.Collections;

//<! Use this to call themusic manager to play the BGM, this only PLAYS the BGM, not edit it />
public class PlayBGM : MonoBehaviour {

	// Use this for initialization
	void Start () {

        if (Application.loadedLevel == 1)//gamescreen
            MusicManager.PlayGameBGM();
        else
            MusicManager.STOPBGM();

        if (Application.loadedLevel == 7)
            MusicManager.PlayVictoryScreen();
	}
}
