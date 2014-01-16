using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Module
/// </summary>
public class Module
{
    public string name;
    public string description;
    public List<string> features = new List<string>();
    public Module()
    {

    }
    public Module(string name, string description)
    {
        this.name = name;
        this.description = description;
    }
}