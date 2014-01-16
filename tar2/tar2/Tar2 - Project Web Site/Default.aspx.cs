using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;

public partial class tar2_Tar2___Project_Web_Site_Default : System.Web.UI.Page
{
    List<Project> ProjectList = new List<Project>();

    protected void Page_Load(object sender, EventArgs e)
    {
        string temp = "";

        string fname = Server.MapPath(".") + "/XmlFiles/";
        int num = (Directory.GetFiles(fname)).Length;
        string[] names = new string[num];
        names = Directory.GetFiles(fname);

        foreach (string item in names)
        {
            FileInfo x = new FileInfo(item);
            temp = x.Name;
            string name = Server.MapPath(".") + "/XmlFiles/" + temp;
            Project p = new Project();
            try
            {
                p = p.ReadXML(name);
            }
            catch (Exception ex)
            {
                Response.Write("There was an error in reading the XML: " + ex.Message);
                return;
            }
            ProjectList.Add(p);




        }
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        //search func
        string temp = "";
        string groupcode;
        string value = SearchCbox.SelectedItem.ToString();
        foreach (Project p in ProjectList)
        {
            switch (value)
            {
                case "customer":
                    foreach (Customer c in p.customers)
                    {
                        temp = c.name;
                        if (temp == valueTxt.Text)
                            break;
                    }

                    break;
                case "students":

                    break;
                case "technologies":

                    break;
                case "tags":

                    break;
                default:

                    break;
            }
            if (temp == valueTxt.Text)
            {
                //groupcode = p.groupCode;
                Session["Psearch"] = p;
                Response.Redirect("showProject.aspx");

                return;

            }
        }
    }
}