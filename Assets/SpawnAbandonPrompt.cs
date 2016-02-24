using UnityEngine;
using System.Collections;

public class SpawnAbandonPrompt : MonoBehaviour {

    public GameObject thePromptPrefab;

    public void spawnPrompt()
    {
        GameObject clone = (GameObject)Instantiate(thePromptPrefab);
        clone.transform.parent = transform;
        clone.transform.localPosition = new Vector3(-139, -92, 0);
        clone.transform.localScale = Vector3.one;
    }
}
