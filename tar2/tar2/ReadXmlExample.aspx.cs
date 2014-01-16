using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReadXmlExample : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loadBTN_Click(object sender, EventArgs e)
    {
        string fname = Server.MapPath(".") + "/XmlFiles/" + xmlFname.Text + ".xml";
        Project p = new Project();
        try
        {
            p = p.ReadXML(fname);
        }
        catch (Exception ex)  {
            Response.Write("There was an error in reading the XML: " + ex.Message);
            return;
        }
        Response.Write("The project " + p.name + " was successfully loaded from the XML");
    }
 
}