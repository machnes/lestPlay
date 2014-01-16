using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Goal
/// </summary>
public class Goal
{
    public string description;
    public string status;
  
    public Goal ()
	{} 

	
    public Goal (string description,string status)
    {
        this.description = description;
        this.status = status;
            
	}
}