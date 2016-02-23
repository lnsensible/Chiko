﻿using UnityEngine;
using System.Collections;

public class MusicManager : MonoBehaviour {

    private static MusicManager instance = null;

    public static MusicManager Instance
    {
        get { return instance; }
    }

    private AudioSource[] sounds;
    public static AudioClip[] sfx;

    public static AudioSource BGM_Player;
    public static AudioSource SFX_Player;
    public static AudioSource SFX2_Player;

    public enum SoundList
    {
        menu_bgm = 0,
        battle_bgm = 1,

        button_press = 2,
        sound_select = 3,
        sound_swipe = 4,
        control_select = 5,
        options_change = 6,
        game_start = 7,
        invalid_press = 8,

        soundlist_totalsounds
    };

    void Awake()
    {
        if (instance != null && instance != this)
        {
            Destroy(this.gameObject);
            return;
        }

        instance = this;
        DontDestroyOnLoad(gameObject);

        //sounds = GetComponents<AudioSource>();
        //BGM_Player = sounds[0];
        //SFX_Player = sounds[1];
        //SFX2_Player = sounds[2];

        //sfx = new AudioClip[(int)SoundList.soundlist_totalsounds];
    }

    void Start()
    {
        //sfx[0] = (AudioClip)Resources.Load("default_menu_bgm");
        //sfx[1] = (AudioClip)Resources.Load("default_battle_bgm");
        //sfx[2] = (AudioClip)Resources.Load("default_button_press");
        //sfx[3] = (AudioClip)Resources.Load("default_sound_select");
        //sfx[4] = (AudioClip)Resources.Load("default_swipe");
        //sfx[5] = (AudioClip)Resources.Load("default_control_select");
        //sfx[6] = (AudioClip)Resources.Load("default_options_change");
        //sfx[7] = (AudioClip)Resources.Load("default_game_start");
        //sfx[8] = (AudioClip)Resources.Load("default_invalid_press");

        //BGM_Player.clip = sfx[0];
        //BGM_Player.loop = true;
       // BGM_Player.Play();

    }
}