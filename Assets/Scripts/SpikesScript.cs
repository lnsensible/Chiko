using UnityEngine;
using System.Collections;

public class SpikesScript : MonoBehaviour {

    public GameObject spikesPrefab;
    public GameObject thespike;

    private Vector3 spiksDir;

    public float theDamage;

    // Use this for initialization
    void Start()
    {

    }

    public void placeSpikes(Vector3 pos, Vector3 facing)
    {
        GameObject clone = (GameObject)Instantiate(spikesPrefab, pos, Quaternion.identity);
        clone.transform.LookAt(facing);
        clone.transform.Rotate(0, 90, 0);
        clone.transform.localEulerAngles.Set(0, clone.transform.localEulerAngles.y, 0);
        clone.GetComponent<SpikesScript>().spiksDir = clone.transform.localEulerAngles;
    }

    void PlaySpikes()
    {
        GameObject spikes = (GameObject)Instantiate(thespike, transform.position, Quaternion.identity);
        Vector3 scale = new Vector3(800, 800, 800);
        spikes.transform.localScale = scale;
        spikes.transform.localEulerAngles = spiksDir;
        spikes.GetComponent<Animation>().Play();
    }

    void OnTriggerEnter(Collider col)
    {
        if (gameObject.tag == "Trap")
        {
            if (col.tag == "Enemy")
            {
               PlaySpikes();
               col.gameObject.GetComponent<Enemy>().MinusHealth(theDamage);
               MusicManager.SFX_Player.clip = MusicManager.sfx[(int)MusicManager.SoundList.spikes_activated];
               MusicManager.SFX_Player.Play();
               Debug.Log("destroyed");
            }
        }
    }
}
