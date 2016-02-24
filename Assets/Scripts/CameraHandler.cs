using UnityEngine;
using System.Collections;

public class CameraHandler : MonoBehaviour {

    private GameObject theMesh;

    public float camRotateSpeed;
    public float cameraHeight;

	// Use this for initialization
	void Start () {
        theMesh = null;
	}
	
	// Update is called once per frame
	void Update () {

        transform.LookAt(PlayerMovement.playerPosition);
        Vector3 c = transform.position;
        c.y = cameraHeight;
        transform.position = c;
        
        //transform.Translate(Vector3.right * Time.deltaTime * camRotateSpeed);

        // Making mesh disappear
	    Transform cam = Camera.main.transform;
        RaycastHit hit;
        if (Physics.Raycast(cam.position, cam.forward, out hit, 5000))
        {
            if (hit.collider.gameObject.layer == LayerMask.NameToLayer("World"))
            {
                if (theMesh != hit.collider.gameObject)
                {
                    if (theMesh != null && hit.collider.gameObject.GetComponent<MeshTextureHandler>() != null)
                    {
                        hit.collider.gameObject.GetComponentInChildren<MeshRenderer>().material  = hit.collider.gameObject.GetComponent<MeshTextureHandler>().opaqueMat;
                        theMesh = hit.collider.gameObject;
                    }

                    theMesh = hit.collider.gameObject;
                }

                if (hit.collider.gameObject.GetComponent<MeshTextureHandler>() != null)
                    hit.collider.gameObject.GetComponentInChildren<MeshRenderer>().material = hit.collider.gameObject.GetComponent<MeshTextureHandler>().transparentMat;
            }
            else
            {
                if (theMesh != null && hit.collider.gameObject.GetComponent<MeshTextureHandler>() != null)
                {
                    theMesh.GetComponentInChildren<MeshRenderer>().material = theMesh.GetComponent<MeshTextureHandler>().opaqueMat;
                    theMesh = null;
                }
            }
        }
	}
}
