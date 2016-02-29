using UnityEngine;
using System.Collections;

public class CooldownMeshHandler : MonoBehaviour {

    public Material theBeartrapMesh;
    public Material theTripwireMesh;
    public Material theWallMesh;
    public Material theSpikesMesh;
    public Material theDecoyMesh;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
        transform.LookAt(Camera.main.transform);
	}
    
    public void SetAlpha(float curCD, float maxCD)
    {
        Color thecolor = GetComponent<MeshRenderer>().material.color;
        thecolor.a = Mathf.Max(0.1f, curCD / maxCD);
        GetComponent<MeshRenderer>().material.color = thecolor;
    }

    public void SetMaterial(Chiko.TRAP trapType)
    {
        switch(trapType)
        {
            case Chiko.TRAP.BEARTRAP:
                GetComponent<MeshRenderer>().material = theBeartrapMesh;
                break;
            case Chiko.TRAP.DECOY:
                GetComponent<MeshRenderer>().material = theDecoyMesh;
                break;
            case Chiko.TRAP.SPIKES:
                GetComponent<MeshRenderer>().material = theSpikesMesh;
                break;
            case Chiko.TRAP.TRIPWIRE:
                GetComponent<MeshRenderer>().material = theTripwireMesh;
                break;
            case Chiko.TRAP.WALLS:
                GetComponent<MeshRenderer>().material = theWallMesh;
                break;
        }
    }
}
