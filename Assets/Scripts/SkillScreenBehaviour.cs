using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class SkillScreenBehaviour : MonoBehaviour {

    ArrayList skillPoints;
    public Text requirements;

    bool b_SeeSkill;
	// Use this for initialization
	void Start () {

        requirements.text = "";
        requirements.color = Color.yellow;
        requirements.enabled = false;
        b_SeeSkill = false;

	    foreach(GameObject button in GameObject.FindGameObjectsWithTag("Skill Button"))
        {
            Button bo = button.GetComponent<Button>();
            if(bo != null)
            {
                bo.image.color = Color.grey;
                Text btnTxt = button.GetComponentInChildren<Text>();
                Color c = btnTxt.color;
                c.a = 0.5f;
                btnTxt.color = c;
            }
            
        }
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void SkillPressed(GameObject self)
    {
        if (b_SeeSkill == false)
        {
            //display the required items   
            Button bo = self.GetComponent<Button>();
            if(bo.image.color != Color.white)
            {
                //if havent see skill
                requirements.transform.SetParent(self.transform);
                requirements.transform.localPosition = Vector3.zero;
                requirements.enabled = true;
                //do a switch statement here, check against name foor diff requirement
                requirements.text = "1 skill point";
                requirements.transform.SetAsLastSibling();
                b_SeeSkill = true;
            }
        }
        else
        //if press again
        {

            //check for available skill points and gold
            if(self.Equals(requirements.transform.parent.gameObject))
            {
                //lights up the skill
                Button bo = self.GetComponent<Button>();
                if (bo != null)
                {
                    bo.image.color = Color.white;
                    Text btnTxt = self.GetComponentInChildren<Text>();
                    Color c = btnTxt.color;
                    c.a = 1.0f;
                    btnTxt.color = c;
                }
                requirements.enabled = false;
                b_SeeSkill = false;
            }
            else if (!self.Equals(requirements.transform.parent.gameObject))
            {
                //if havent see skill
                requirements.transform.SetParent(self.transform);
                requirements.transform.localPosition = Vector3.zero;
                requirements.enabled = true;
                //do a switch statement here, check against name foor diff requirement
                requirements.text = "1 skill point";
                requirements.transform.SetAsLastSibling();
                b_SeeSkill = true;
            }
            else
            {
                b_SeeSkill = false;
            }
        }
    }
}
