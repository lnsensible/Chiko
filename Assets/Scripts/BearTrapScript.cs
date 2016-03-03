﻿using UnityEngine;
using System.Collections;

public class BearTrapScript : MonoBehaviour {

    public GameObject bearTrapPrefab;
    public float theDamage;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}

    public void placeBearTrap(Vector3 pos)
    {
       Instantiate(bearTrapPrefab, pos, Quaternion.identity);
    }

    public void DestroyBearTrap()
    {
        Destroy(gameObject);
    }

    void OnTriggerEnter(Collider col)
    {
        if (gameObject.tag == "Trap")
        {
            if (col.tag == "Enemy")
            {
                GetComponent<Animation>().Play();
                col.gameObject.GetComponent<Enemy>().MinusHealth(theDamage);
                MusicManager.SFX_Player.clip = MusicManager.sfx[(int)MusicManager.SoundList.beartrap_activated];
                MusicManager.SFX_Player.Play();
                Invoke("DestroyBearTrap", 1.0f);
            }
        }
    }
}
