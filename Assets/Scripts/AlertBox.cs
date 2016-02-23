using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class AlertBox : MonoBehaviour {

    public GameObject body;
    public Button yes;
    public Button No;
    public Text msg;
    static bool b_Yes = false;
	void Start () {
        //makes the buttons and body the child of this gameObject;
        //yes.onClick.AddListener(delegate { yesPressed(); });
        //No.onClick.AddListener(delegate { noPressed(); });
	}
    public void SetMessage(string txt)
    {
        msg.text = txt;
    }
    public void SETPARENT(Transform t)
    {
        body.transform.SetParent(t);
    }
    public void ShowBox()
    {
        transform.SetAsLastSibling();
        //create the body
        Instantiate(body, Vector3.zero, Quaternion.identity);
    }
	// Update is called once per frame
	void Update () {
	
	}
}
