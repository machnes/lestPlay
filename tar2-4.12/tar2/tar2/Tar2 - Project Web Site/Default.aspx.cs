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
    List<Project> SearchProList = new List<Project>();

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
        LoadSlides(ProjectList);
    }

    protected void LoadSlides(List<Project> list)
    {
        ContentPlaceHolder cp = (ContentPlaceHolder)Form.FindControl("ContentPlaceHolder1");
        PlaceHolder PH = (PlaceHolder)cp.FindControl("SlidesPH");
        PH.Controls.Clear();
        foreach (Project p in list)
        {
            UserControl newCtrl = (UserControl)Page.LoadControl("~/tar2/Tar2 - Project Web Site/Controls/Slide.ascx");
            newCtrl.ID = p.groupCode;
            SlidesPH.Controls.Add(newCtrl);
            UserControl uc = (UserControl)cp.FindControl(p.groupCode);
            Label nLabel = (Label)uc.FindControl("dLabel");
            nLabel.Text = p.shortDescription;
            Label pLabel = (Label)uc.FindControl("nameLbl");
            pLabel.Text = p.name;
            ImageButton Simg = (ImageButton)uc.FindControl("Image1");
            Simg.ID = p.groupCode;
            Simg.Click += new ImageClickEventHandler(Simg_Click);
            Simg.ImageUrl = p.projectImageUrl;

        }
    }

    void Simg_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        foreach (Project p in ProjectList)
        {
            if (img.ID == p.groupCode)
            {
                Session["Psearch"] = p;
                Response.Redirect("showProject.aspx");
            }
        }
    }

    //search func
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        string value;
        if (sender.ToString() == "System.Web.UI.WebControls.RadioButtonList")
        {
            value = "BA/IE";
        }
        else
        {
            value = SearchCbox.SelectedItem.ToString();
        }

        foreach (Project p in ProjectList)
        {
            switch (value)
            {
                case "customer":
                    foreach (Customer c in p.customers)
                    {
                        if (System.Text.RegularExpressions.Regex.IsMatch(c.name, valueTxt.Text))
                            SearchProList.Add(p); break;
                    }
                    break;

                case "students":
                    foreach (Student s in p.students)
                    {
                        if (System.Text.RegularExpressions.Regex.IsMatch(s.name, valueTxt.Text))
                            SearchProList.Add(p); break;
                    }
                    break;

                case "technologies":
                    foreach (string t in p.technologies)
                    {
                        if (System.Text.RegularExpressions.Regex.IsMatch(t, valueTxt.Text, System.Text.RegularExpressions.RegexOptions.IgnoreCase))
                            SearchProList.Add(p);
                    }
                    break;

                case "tages":
                    foreach (string tag in p.tags)
                    {
                        if (System.Text.RegularExpressions.Regex.IsMatch(tag, valueTxt.Text))
                            SearchProList.Add(p); break;
                    }
                    break;

                case "faculty":

                    if (System.Text.RegularExpressions.Regex.IsMatch(p.faculty, valueTxt.Text, System.Text.RegularExpressions.RegexOptions.IgnoreCase))

                    { SearchProList.Add(p); break; }
                    break;

                case "BA/IE":
                    if (p.faculty == FacultyBtnl.SelectedValue)
                    { SearchProList.Add(p); }
                    else if (FacultyBtnl.SelectedValue == "All")
                    {
                        LoadSlides(ProjectList);
                        return;
                    }
                    break;

                default:
                    break;
            }

        }
        LodeSearch(SearchProList);

    }

    //load after search
    protected void LodeSearch(List<Project> list)
    {
        ContentPlaceHolder cp = (ContentPlaceHolder)Form.FindControl("ContentPlaceHolder1");
        PlaceHolder PH = (PlaceHolder)cp.FindControl("SlidesPH");
        PH.Controls.Clear();
        int i = 0;
        foreach (Project p in list)
        {
            UserControl newCtrl = (UserControl)Page.LoadControl("~/tar2/Tar2 - Project Web Site/Controls/Slide.ascx");
            newCtrl.ID = "p" + i;
            newCtrl.Attributes.CssStyle.Add("width", "500px");
            SlidesPH.Controls.Add(newCtrl);
            UserControl uc = (UserControl)PH.FindControl("p" + i++);
            Label nLabel = (Label)uc.FindControl("dLabel");
            nLabel.Text = p.shortDescription;
            Label pLabel = (Label)uc.FindControl("nameLbl");
            pLabel.Text = p.name;
            ImageButton Simg = (ImageButton)uc.FindControl("Image1");
            Simg.ID = p.groupCode;
            Simg.Click += new ImageClickEventHandler(Simg_Click);
            Simg.ImageUrl = p.projectImageUrl;

        }

    }




}