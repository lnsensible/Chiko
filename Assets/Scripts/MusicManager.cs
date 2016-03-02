using UnityEngine;
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
        beartrap_activated = 0,
        beartap_placed = 1,
        decoy_placed = 2,
        explosion = 3,
        spikes_placed = 4,
        tripmine_placed = 5,
        tripmine_activated = 6,
        wall_active = 7,
        wall_hit = 8,
        spikes_activated = 9,
        button_pressed = 10,
        exp_earned = 11,
        gold_ = 12,
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

        sfx = new AudioClip[(int)SoundList.soundlist_totalsounds];

        sounds = GetComponents<AudioSource>();
        BGM_Player = sounds[0];
        SFX_Player = sounds[1];
    }

    void Start()
    {
        sfx[(int)SoundList.beartrap_activated]  = (AudioClip)Resources.Load("BearTrapActivated1");
        sfx[(int)SoundList.beartap_placed]      = (AudioClip)Resources.Load("BearTrapActive1");
        sfx[(int)SoundList.decoy_placed]        = (AudioClip)Resources.Load("DecoyActive1");
        sfx[(int)SoundList.explosion]           = (AudioClip)Resources.Load("Explosion");
        sfx[(int)SoundList.spikes_placed]       = (AudioClip)Resources.Load("SpikesActive1");
        sfx[(int)SoundList.tripmine_placed]     = (AudioClip)Resources.Load("TripmineActive1");
        sfx[(int)SoundList.tripmine_activated]  = (AudioClip)Resources.Load("TripmineActivated1");
        sfx[(int)SoundList.wall_active]  = (AudioClip)Resources.Load("WallActive1");
        sfx[(int)SoundList.wall_hit]            = (AudioClip)Resources.Load("TripmineActive1");
        sfx[(int)SoundList.spikes_activated] = (AudioClip)Resources.Load("BearTrapActive1");
        sfx[(int)SoundList.button_pressed] = (AudioClip)Resources.Load("Select");
        sfx[(int)SoundList.exp_earned] = (AudioClip)Resources.Load("XPGained");
        sfx[(int)SoundList.gold_] = (AudioClip)Resources.Load("CurrencyEarned");
        //BGM_Player.clip = sfx[(int)SoundList.wall_active];
    }

    static public void PlayGameBGM()
    {
        BGM_Player.loop = true;
        BGM_Player.Play();
    }

    static public void playBtnPress()
    {
        SFX_Player.clip = MusicManager.sfx[(int)SoundList.button_pressed];
        SFX_Player.Play();
    }

    static public void PlayVictoryScreen()
    {
        SFX_Player.clip = MusicManager.sfx[(int)SoundList.exp_earned];
        SFX_Player.Play();
    }

    static public void STOPBGM()
    {
        BGM_Player.Stop();
    }
}