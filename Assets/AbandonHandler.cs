using UnityEngine;
using System.Collections;

public class AbandonHandler : MonoBehaviour {

    public void deleteBox()
    {
        Destroy(gameObject);
    }

    public void goMainMenu()
    {
        Application.LoadLevel("Mission Fail");
    }
}
