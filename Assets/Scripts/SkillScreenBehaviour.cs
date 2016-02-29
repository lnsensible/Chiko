using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class SkillScreenBehaviour : MonoBehaviour
{

    ArrayList skillPoints;
    public Text requirements;

    bool b_SeeSkill;

    public GameObject skillpointSample;
    int yellow_skillpoints;
    int yellow_USEDSkillPoints;
    int Red_skillpoints;
    int Green_skillpoints;
    int Blue_skillpoints;
    int counter_yellow = 0;
    int counter_red = 0;
    int counter_green = 0;
    int counter_blue = 0;

    public GameObject SkillPopUpBox;

    // Use this for initialization
    void Start()
    {
        requirements.text = "";
        requirements.color = Color.yellow;
        requirements.enabled = false;
        b_SeeSkill = false;
        int i = 0;
        
        foreach (GameObject button in GameObject.FindGameObjectsWithTag("Skill Button"))
        {
            
            Button bo = button.GetComponent<Button>();
            if (bo != null)
            {
                bo.image.color = Color.grey;
                Text btnTxt = button.GetComponentInChildren<Text>();
                Color c = btnTxt.color;
                c.a = 0.5f;
                btnTxt.color = c;
            }
            
        }
        GenerateSkillPoints();
    }
    void GetSkillPointsFromPrefab()
    {
        Red_skillpoints = PlayerPrefs.GetInt("red skillpoints");
        Green_skillpoints = PlayerPrefs.GetInt("green skillpoints");
        Blue_skillpoints = PlayerPrefs.GetInt("blue skillpoints");
        yellow_USEDSkillPoints = PlayerPrefs.GetInt("yellow skillPoints");
        //remaining points go to "free / yellow" skillpoints
        yellow_skillpoints = PlayerPrefs.GetInt("rank");
        yellow_skillpoints = yellow_skillpoints - yellow_USEDSkillPoints;
    }
    // Update is called once per frame
    void Update()
    {
        GetSkillPointsFromPrefab();
        GenerateSkillPoints();
    }

    void GenerateSkillPoints()
    {
        //////////////================ YELLOW SKILL POINT =====================================
        Transform parentT = GameObject.Find("Free Skill Points").GetComponent<Transform>();
        for (int i = counter_yellow; i < yellow_skillpoints; i++, counter_yellow++)
        {
            //generate GameObject then set the gameobject things
            GameObject go = Instantiate(skillpointSample, Vector3.zero, Quaternion.identity) as GameObject;
            go.GetComponent<Image>().color = Color.yellow;
            go.transform.SetParent(parentT);
            go.transform.localPosition = new Vector3(30 + i * 5, 3, 0);
            go.transform.localScale = new Vector3(0.2f, 0.3f, 0.2f);
        }

        if (counter_yellow > yellow_skillpoints)
        {
            if(parentT.childCount > 0)
            {
                GameObject child = parentT.GetChild(parentT.childCount - 1).gameObject;

                counter_yellow -= 1;
                Destroy(child);
                
            }
        }

        //////////////================ RED SKILL POINT =====================================
        Transform parentT2 = GameObject.Find("Red Skill Point").GetComponent<Transform>();
        for (int i = counter_red; i < Red_skillpoints; i++, counter_red++)
        {
            //generate GameObject then set the gameobject things
            GameObject go = Instantiate(skillpointSample, Vector3.zero, Quaternion.identity) as GameObject;
            go.GetComponent<Image>().color = Color.red;
            go.transform.SetParent(parentT2);
            go.transform.localPosition = new Vector3(30 + i * 5, 3, 0);
            go.transform.localScale = new Vector3(0.2f, 0.3f, 0.2f);
        }
        if (counter_red > Red_skillpoints)
        {
            GameObject child = parentT2.GetChild(parentT2.childCount - 1).gameObject;
            counter_red -= 1;
            Destroy(child);
        }
        //////////////================ GREEN SKILL POINT =====================================
        Transform parentT3 = GameObject.Find("Green Skill Point").GetComponent<Transform>();
        for (int i = counter_green; i < Green_skillpoints; i++, counter_green++)
        {
            //generate GameObject then set the gameobject things
            GameObject go = Instantiate(skillpointSample, Vector3.zero, Quaternion.identity) as GameObject;
            go.GetComponent<Image>().color = Color.green;
            go.transform.SetParent(parentT3);
            go.transform.localPosition = new Vector3(30 + i * 5, 3, 0);
            go.transform.localScale = new Vector3(0.2f, 0.3f, 0.2f);
        }
        if (counter_green > Green_skillpoints)
        {
            GameObject child = parentT3.GetChild(parentT3.childCount - 1).gameObject;
            counter_green -= 1;
            Destroy(child);
        }
        //////////////================ BLUE SKILL POINT =====================================
        Transform parentT4 = GameObject.Find("Blue Skill Point").GetComponent<Transform>();
        for (int i = counter_blue; i < Blue_skillpoints; i++, counter_blue++)
        {
            //generate GameObject then set the gameobject things
            GameObject go = Instantiate(skillpointSample, Vector3.zero, Quaternion.identity) as GameObject;
            go.GetComponent<Image>().color = Color.blue;
            go.transform.SetParent(parentT4);
            go.transform.localPosition = new Vector3(30 + i * 5, 3, 0);
            go.transform.localScale = new Vector3(0.2f, 0.3f, 0.2f);
        }
        if (counter_blue > Blue_skillpoints)
        {
            GameObject child = parentT4.GetChild(parentT4.childCount - 1).gameObject;
            counter_blue -= 1;
            Destroy(child);
        }
    }
    void RefundSkillPoint(string nameOfSkill)
    {
        if (nameOfSkill == "Birth of a Berserker")
        {
            Red_skillpoints += 1;
            PlayerPrefs.SetInt("Birth of a Berserker", 0);
        }
        else if (nameOfSkill == "Birth of a Speedster")
        {
            Blue_skillpoints += 1;
            PlayerPrefs.SetInt("Birth of a Speedster", 0);
        }
        else if (nameOfSkill == "Birth of a Healer")
        {
            Green_skillpoints += 1;
            PlayerPrefs.SetInt("Birth of a Healer", 0);
        }
        else if (nameOfSkill == "Speed of Light")
        {
            Red_skillpoints += 1;
            Blue_skillpoints += 1;
            Green_skillpoints += 1;
            PlayerPrefs.SetInt("Speed of Light", 0);
        }

        PlayerPrefs.SetInt("green skillpoints", Green_skillpoints);
        PlayerPrefs.SetInt("blue skillpoints", Blue_skillpoints);
        PlayerPrefs.SetInt("red skillpoints", Red_skillpoints);
    }

    bool SkillRequirements(string nameOfSkill)
    {
        // NOTE : DONT NEED TO CHECK FOR FREE SKILL POINTS , ONLY CHECK FOR CORRESPONDING TYPE AND SETTING THE PREFAB
        //          FREE SKILL POINT IS ALREADY BEING CHECKED BEFORE THIS FUNCTION CALL
        
        //basic skills
        if (nameOfSkill == "Birth of a Berserker")
        {
            //all skill to activate need a free skill point
            yellow_USEDSkillPoints += 1;
            PlayerPrefs.SetInt("yellow skillPoints", yellow_USEDSkillPoints);
            PlayerPrefs.SetInt("Birth of a Berserker", 1); // 1 - activative , 0 - not active
            return true;
        }
        else if (nameOfSkill == "Birth of a Speedster")
        {
            //all skill to activate need a free skill point
            yellow_USEDSkillPoints += 1;
            PlayerPrefs.SetInt("yellow skillPoints", yellow_USEDSkillPoints);
            PlayerPrefs.SetInt("Birth of a Speedster", 1); // 1 - activative , 0 - not active
            return true;
        }
        else if (nameOfSkill == "Birth of a Healer")
        {
            //all skill to activate need a free skill point
            yellow_USEDSkillPoints += 1;
            PlayerPrefs.SetInt("yellow skillPoints", yellow_USEDSkillPoints);
            PlayerPrefs.SetInt("Birth of a Healer", 1); // 1 - activative , 0 - not active
            return true;
        }

        //hybrid skills extra requirements here
        if (Red_skillpoints >= 1 && Blue_skillpoints >= 1 && Green_skillpoints >= 1)
        {
            if(nameOfSkill == "Speed of Light")
            {
                //all skill to activate need a free skill point
                yellow_USEDSkillPoints += 1;
                PlayerPrefs.SetInt("yellow skillPoints", yellow_USEDSkillPoints);

                Red_skillpoints -= 1;
                PlayerPrefs.SetInt("red skillpoints", Red_skillpoints);
        
                Blue_skillpoints -= 1;
                PlayerPrefs.SetInt("blue skillpoints", Blue_skillpoints);
      
                Green_skillpoints -= 1;
                PlayerPrefs.SetInt("green skillpoints", Green_skillpoints);

                PlayerPrefs.SetInt("Speed of Light", 1); // 1 - activative , 0 - not active
                return true;
            }
        }
        return false;
    }

    void ShowRequirements(string nameOfSkill, bool show)
    {
        //red, blue, green
        Text redPoint = requirements.transform.GetChild(0).GetComponentInChildren<Text>();
        Text bluePoint = requirements.transform.GetChild(1).GetComponentInChildren<Text>();
        Text greenPoint = requirements.transform.GetChild(2).GetComponentInChildren<Text>();

        requirements.enabled = show;
        //do a switch statement here, check against name foor diff requirement
        requirements.text = "1 skill point";
        //for all base skills
        redPoint.enabled = false;
        bluePoint.enabled = false;
        greenPoint.enabled = false;

        //these skills require all 3 types
        if (nameOfSkill == "Speed of Light" || nameOfSkill == "Gold Digger")
        {
            redPoint.enabled = show;
            bluePoint.enabled = show;
            greenPoint.enabled = show;
        }

        //only require 2 types
        // <! red and blue
        if(nameOfSkill == "Sharp Witted")
        {
            redPoint.enabled = show;
            bluePoint.enabled = show;
        }

        // <! red and green
        if (nameOfSkill == "Bloodrage" || nameOfSkill == "Blood Sucker")
        {
            redPoint.enabled = show;
            greenPoint.enabled = show;
        }
    }

    public void SkillPressed(GameObject self)
    {
        Button bo = self.GetComponent<Button>();
        if (bo.image.color != Color.white)
        {
            if (b_SeeSkill == false)
            {
                //display the required items   
                if (bo.image.color != Color.white)
                {
                    //if havent see skill
                    requirements.transform.SetParent(self.transform);
                    requirements.transform.localPosition = Vector3.zero;
                    
                    ShowRequirements(self.name, true);

                    requirements.transform.SetAsLastSibling();
                    b_SeeSkill = true;
                }
            }
            else
            //if press again
            {
                //check for available skill points and gold
                if (self.Equals(requirements.transform.parent.gameObject))
                {
                    //changing skill points values
                    if (yellow_skillpoints > 0)
                    {
                        //if requirements met and the changes made
                        if(SkillRequirements(self.name))
                        {
                            //lights up the skill
                            if (bo != null)
                            {
                                bo.image.color = Color.white;
                                Text btnTxt = self.GetComponentInChildren<Text>();
                                Color c = btnTxt.color;
                                c.a = 1.0f;
                                btnTxt.color = c;
                            }
                            ShowRequirements(self.name, false);
                            b_SeeSkill = false;
                        }
                    }
                }
                else if (!self.Equals(requirements.transform.parent.gameObject))
                {
                    //if havent see skill
                    requirements.transform.SetParent(self.transform);
                    requirements.transform.localPosition = Vector3.zero;
                    ShowRequirements(self.name, true);

                    requirements.transform.SetAsLastSibling();
                    b_SeeSkill = true;
                }
                else
                {
                    b_SeeSkill = false;
                }
            }
        }
        else // while skill is active - deactivate 
        {
            //show popup box here
            ShowResetBox(self);
        }
    }


    //THE CONFIRMATION PROMPT BOX IS SHOWN HERE.
    GameObject tempStoreSkill;
    void ShowResetBox(GameObject targetSkill)
    {
        tempStoreSkill = targetSkill;
        //move it to center of screen
        SkillPopUpBox.transform.GetComponentInChildren<Text>().text = "Do you want to reset \n" + targetSkill.name + "?";
        SkillPopUpBox.transform.localPosition = new Vector3(4, 0, 0);
        SkillPopUpBox.transform.SetAsLastSibling();
        
    }
    //deactivate skill HERE
    public void YesPressed()
    {
        Button bo = tempStoreSkill.GetComponent<Button>();
        if (bo != null)
        {
            bo.image.color = Color.grey;
            Text btnTxt = tempStoreSkill.GetComponentInChildren<Text>();
            Color c = btnTxt.color;
            c.a = 0.5f;
            btnTxt.color = c;
        }
        RefundSkillPoint(tempStoreSkill.name);
        ShowRequirements(tempStoreSkill.name, false);
        b_SeeSkill = false;
        NoPressed();
    }
    public void NoPressed()
    {
        //move it down
        SkillPopUpBox.transform.localPosition = new Vector3(0, -348, 0);
    }
}
