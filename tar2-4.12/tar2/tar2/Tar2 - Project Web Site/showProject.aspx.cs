using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tar2_Tar2___Project_Web_Site_showProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["p1"] != null)
        {
            Project uploadP = (Project)(Session["p1"]);
            Load_Project(uploadP);
        }
        else if (Session["Psearch"] != null)
        {
            Project uploadP = (Project)(Session["Psearch"]);
            Load_Project(uploadP);
        }
    }

    protected void LoadBtn_Click(object sender, EventArgs e)
    {
        string fname = Server.MapPath(".") + "/XmlFiles/" + FileNametb.Text + ".xml";

        Project p = new Project();
        try
        {
            p = p.ReadXML(fname);
        }
        catch (Exception ex)
        {
            Response.Write("There was an error in reading the XML: " + ex.Message);
            return;
        }
        Load_Project(p);


    }

    public void Load_Project(Project p)///load page details
    {
        ContentPlaceHolder cp = (ContentPlaceHolder)Form.FindControl("ContentPlaceHolder1");
        AjaxControlToolkit.Accordion acc = (AjaxControlToolkit.Accordion)cp.FindControl("Accordion1");


        ///load project pane

        //load details tab
        nameLbl.Text = p.name;
        typeLbl.Text = p.type;
        facultyLbl.Text = p.faculty;
        yearLbl.Text = p.year.ToString();
        foreach (string tag in p.tags)
        {
            Label tagLbl = new Label();
            tagLbl.Text = tag + ", ";
            TagsPH.Controls.Add(tagLbl);
        }

        //load description tab
        DescriptionLbl.Text = p.shortDescription;
        Image logoimg = new Image();
        logoimg.ImageUrl = p.projectImageUrl;


        logoimg.CssClass = "logoimage";
        LogoPH.Controls.Add(logoimg);

        //load advisors 
        foreach (string advisor in p.advisors)
        {
            Label advisorLbl = new Label();
            advisorLbl.Text = advisor + ", ";
            advisorPH.Controls.Add(advisorLbl);
        }

        //load links tab
        landingPageHl.NavigateUrl = p.projectLandingPage;
        landingPageHl.Text = "Landing Page";
        string tempurl = p.movie.Replace("watch?v=", "embed/");
        tempurl = tempurl.Replace("http:", "");
        string temp = "<iframe src='" + tempurl + "'></iframe>";
        movieHl.Text = temp;
        // load more detail
        chalLbl.Text = p.challenges;
        PersonalNOtslbl.Text = p.personalNote;

        //load technologies
        foreach (string tech in p.technologies)
        {
            Label technologieslbl = new Label();
            technologieslbl.Text = tech + ", ";
            technologyPH.Controls.Add(technologieslbl);

        }

        //load students
        int i = 1;
        foreach (Student s in p.students)
        {
            UserControl newCtrl = (UserControl)Page.LoadControl("~/tar2/Tar2 - Project Web Site/Controls/Student.ascx");
            newCtrl.ID = "student" + i;
            StudentsPH.Controls.Add(newCtrl);
            AjaxControlToolkit.AccordionPane ap = (AjaxControlToolkit.AccordionPane)acc.FindControl("AcpStudents");
            UserControl uc = (UserControl)ap.FindControl("student" + i++);
            Label nLabel = (Label)uc.FindControl("StudentNameLbl");
            nLabel.Text = s.name;
            Image Simg = (Image)uc.FindControl("StudentImage");
            Simg.ImageUrl = s.imageUrl;

        }
        //load Goals
        foreach (Goal g in p.goals)
        {
            UserControl newCtrl = (UserControl)Page.LoadControl("~/tar2/Tar2 - Project Web Site/Controls/Goal.ascx");
            newCtrl.ID = "goal" + i;
            GoalsPH.Controls.Add(newCtrl);
            AjaxControlToolkit.AccordionPane ap = (AjaxControlToolkit.AccordionPane)acc.FindControl("AcpGoals");
            UserControl uc = (UserControl)ap.FindControl("goal" + i++);
            Label nLabel = (Label)uc.FindControl("statusLbl");
            nLabel.Text = g.description;
            Label sLabel = (Label)uc.FindControl("descriptionlbl");
            sLabel.Text = g.status;
        }
        //load ScreenShots
        foreach (ScreenShot sc in p.screenshots)
        {
            UserControl newCtrl = (UserControl)Page.LoadControl("~/tar2/Tar2 - Project Web Site/Controls/ScreenShots.ascx");
            newCtrl.ID = "screenshots" + i;
            newCtrl.Attributes.CssStyle.Value = "screenShots";
            ScreenshotsPH.Controls.Add(newCtrl);
            AjaxControlToolkit.AccordionPane ap = (AjaxControlToolkit.AccordionPane)acc.FindControl("AcpScreenshots");
            UserControl uc = (UserControl)ap.FindControl("screenshots" + i++);
            Label nLabel = (Label)uc.FindControl("Descriptionlbl");
            nLabel.Text = sc.description;
            Image Simg = (Image)uc.FindControl("ScreenShotsImage");
            Simg.ImageUrl = sc.imageUrl;

        }
        //load Customer
        foreach (Customer cu in p.customers)
        {
            UserControl newCtrl = (UserControl)Page.LoadControl("~/tar2/Tar2 - Project Web Site/Controls/customer.ascx");
            newCtrl.ID = "Customer" + i;
            CustomersPH.Controls.Add(newCtrl);
            AjaxControlToolkit.AccordionPane ap = (AjaxControlToolkit.AccordionPane)acc.FindControl("AcpCustomers");
            UserControl uc = (UserControl)ap.FindControl("Customer" + i++);
            Label nLabel = (Label)uc.FindControl("namelbl");
            nLabel.Text = cu.name;
            Label dLabel = (Label)uc.FindControl("shortDescriptionlbl");
            dLabel.Text = cu.shortDescription;

            Image Simg = (Image)uc.FindControl("logoUrlLinke");
            Simg.ImageUrl = cu.logoUrl;



            //intersted Parties

            BulletedList blt = (BulletedList)uc.FindControl("interstedPartiesBltl");
            blt.Items.Clear();

            foreach (string party in cu.interstedParties)
            {
                blt.Items.Add(party);
            }

            //intersted users
            BulletedList blt2 = (BulletedList)uc.FindControl("usersBltl");
            blt2.Items.Clear();

            foreach (string user in cu.users)
            {
                blt2.Items.Add(user);
            }
        }
        //moudels
        foreach (Module m in p.modules)
        {
            UserControl ModulUc = (UserControl)Page.LoadControl("~/tar2/Tar2 - Project Web Site/Controls/module.ascx");
            ModulUc.ID = "Module" + i;
            modulesPH.Controls.Add(ModulUc);

            AjaxControlToolkit.AccordionPane Apcp = (AjaxControlToolkit.AccordionPane)acc.FindControl("Acpmodule");

            UserControl uc = (UserControl)Apcp.FindControl("Module" + i++);
            Label nLabel = (Label)uc.FindControl("namelbl");
            nLabel.Text = " שם המודול: " + m.name;
            Label dLabel = (Label)uc.FindControl("descriptionlbl");
            dLabel.Text = m.description;

            BulletedList bltMoudle = (BulletedList)uc.FindControl("featuresBlts");
            bltMoudle.Items.Clear();

            foreach (string f in m.features)
            {
                bltMoudle.Items.Add(f);
            }
        }
    }
}








