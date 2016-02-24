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
    static public int[] SelectedChiko = new int[3];

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
        string[] chiko = m_theIOScript.Read("Assets\\Texts\\Chikos.txt");
        for (int i = 0; i < chiko.Length; i++)
        {
            ChikoList.Add(int.Parse(chiko[i]));
            Debug.Log(chiko[i]);
        }

        //SelectedChiko[0] = ChikoList[0];
        //ChikoList.Remove(0);
    }

    void Update()
    {

    }
}