﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerName : MonoBehaviour {

	// Use this for initialization
	void Start () {
        GetComponent<Text>().text = PlayerInventory.playerName;
	}
	
	// Update is called once per frame
	void Update () {
	}
}
