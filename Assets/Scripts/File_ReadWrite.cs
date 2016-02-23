using UnityEngine;
using System.Collections;
using System.Text;
using System.IO;

public class File_ReadWrite : MonoBehaviour
{
    static string[] entries = null;
    string debugString;
    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
    }

    public string[] Read(string fileName)
    {
        string lineToRead;
        // Create a new StreamReader, tell it which file to read and what encoding the file
        StreamReader theReader = new StreamReader(fileName, Encoding.Default);
        using (theReader)
        {
            do
            {
                lineToRead = theReader.ReadLine();

                if (lineToRead != null)
                {
                    // split it into arguments based on comma
                    entries = lineToRead.Split(',');
                }
            }
            while (lineToRead != null);
            // Done reading, close the reader and return the string array    
            theReader.Close();
        }
        return entries;
    }

    public void Write(string fileName, int[] intArray)
    {
        string lineToWrite = null;
        for (int i = 0; i < intArray.Length; i++)
        {
            if (i < (intArray.Length - 1))
                lineToWrite += intArray[i] + ", ";
            else
                lineToWrite += intArray[i];
        }

        StreamWriter file = new StreamWriter(fileName);
        file.WriteLine(lineToWrite);
        file.Close();
    }
}
