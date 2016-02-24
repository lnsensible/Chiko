using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SkilltreeGesture : MonoBehaviour {

    RectTransform anchorPosition;
    Vector3 currentAnchorPosition;
    Vector3 mouseAnchorPosition;
    Vector3 currentMousePosition;

    Text meow;

	// Use this for initialization
	void Start () {
        anchorPosition = gameObject.GetComponent<RectTransform>();
        meow = GameObject.Find("skill_Text").GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
	
        // When finger first held down
        if (Input.GetMouseButtonDown(0))
        {
           currentMousePosition = mouseAnchorPosition = Input.mousePosition;
           currentAnchorPosition = anchorPosition.localPosition;
        
        }
        if (Input.touchCount == 1 && Input.GetTouch(0).phase == TouchPhase.Began)
        {
            meow.text = "Touched";
  
            currentMousePosition = mouseAnchorPosition = Input.GetTouch(0).position;
            currentAnchorPosition = anchorPosition.localPosition;
        }

        // If finger held down, translate accordingly
        if (Input.GetMouseButton(0))
        {
            currentMousePosition = Input.mousePosition;
            anchorPosition.localPosition = currentAnchorPosition+(currentMousePosition - mouseAnchorPosition);
        }
        if (Input.touchCount == 1)
        {
            meow.text = "Dragging";

            currentMousePosition = Input.GetTouch(0).position;
            anchorPosition.localPosition = currentAnchorPosition + (currentMousePosition - mouseAnchorPosition)/4;
        }

        // When finger released, hold anchorPosition
        if (Input.GetMouseButtonUp(0))
        {
            anchorPosition.localPosition = currentAnchorPosition + (currentMousePosition - mouseAnchorPosition); 
        }
        if (Input.touchCount == 1 && Input.GetTouch(0).phase == TouchPhase.Ended)
        {
            meow.text = "Released";

            anchorPosition.localPosition = currentAnchorPosition + (currentMousePosition - mouseAnchorPosition)/4; 
        }

        // Prevent skilltree from flying off
        Vector3 lockAnchor = anchorPosition.localPosition;
        if (anchorPosition.localPosition.x < -200)
        {
            lockAnchor.x = -200;
        }
        if (anchorPosition.localPosition.x > 250)
        {
            lockAnchor.x = 250;
        }
        if (anchorPosition.localPosition.y > 150)
        {
            lockAnchor.y = 150;
        }
        if (anchorPosition.localPosition.y < -100)
        {
            lockAnchor.y = -100;
        }
        anchorPosition.localPosition = lockAnchor;


        //if (Input.touchCount == 2)
        //{
        //    // Store both touches.
        //    Touch touchZero = Input.GetTouch(0);
        //    Touch touchOne = Input.GetTouch(1);

        //    // Find the position in the previous frame of each touch.
        //    Vector2 touchZeroPrevPos = touchZero.position - touchZero.deltaPosition;
        //    Vector2 touchOnePrevPos = touchOne.position - touchOne.deltaPosition;

        //    // Find the magnitude of the vector (the distance) between the touches in each frame.
        //    float prevTouchDeltaMag = (touchZeroPrevPos - touchOnePrevPos).magnitude;
        //    float touchDeltaMag = (touchZero.position - touchOne.position).magnitude;

        //    // Find the difference in the distances between each frame.
        //    float deltaMagnitudeDiff = (prevTouchDeltaMag - touchDeltaMag)/20.0f;

        //    // ... change the orthographic size based on the change in distance between the touches.
        //    float scale = Mathf.Min(3.0f, Mathf.Max(0.5f, anchorPosition.localScale.x - deltaMagnitudeDiff));
        //    anchorPosition.localScale = new Vector3(scale, scale, 0);
            
        //}

	}
}
