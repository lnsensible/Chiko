using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerInventory : MonoBehaviour {

    private static PlayerInventory instance = null;

    public static PlayerInventory Instance
    {
        get { return instance; }
    }

    File_ReadWrite m_theIOScript;
    static public List<int> ChikoList = new List<int>();
    static public List<int> ChikoTrapList = new List<int>();

    static public int[] SelectedChiko = new int[3];
    static public int[] SelectedTrap = new int[3];

    static public string playerName = "";

    void Awake()
    {
        if (instance != null && instance != this)
        {
            Destroy(this.gameObject);
            return;
        }

        instance = this;
        DontDestroyOnLoad(gameObject);

    }

    void Start()
    {
        m_theIOScript = GetComponent<File_ReadWrite>();
        SelectedChiko[0] = -1;
        SelectedTrap[0] = -1;
        SelectedChiko[1] = 0;
        SelectedTrap[1] = -1;
        SelectedChiko[2] = -1;
        SelectedTrap[2] = -1;

    }

    void Update()
    {

    }

    void OnApplicatonQuit()
    {
        string tmpchikoList = "";
        for (int i = 0; i < ChikoList.Count; i++ )
        {
            tmpchikoList += ChikoList[i];
            if (i < ChikoList.Count - 1)
                tmpchikoList += " ";
        }

        NetworkManager.syncChikoList(tmpchikoList);
    }
}