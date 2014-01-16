using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tar2_Tar2___Project_Web_Site_uploadProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //Set the initial state of the controls
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Hide Step 1 Panel
        Panel1.Visible = false;
        //Show Step 2 Panel
        Panel2.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //Hide Step 1 Panel
        Panel2.Visible = false; 
        //Show Step 2 Panel
        Panel3.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //Hide Step 1 Panel
        Panel3.Visible = false;
        //Show Step 2 Panel
        Panel4.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Hide Step 1 Panel
        Panel4.Visible = false;
        //Show Step 2 Panel
        Panel5.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //Hide Step 1 Panel
        Panel5.Visible = false;
        //Show Step 2 Panel
        Panel6.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        //Hide Step 1 Panel
        Panel6.Visible = false;
        //Show Step 2 Panel
        Panel7.Visible = true;
    }

    protected void submitBTN_Click(object sender, EventArgs e)
    {

        ContentPlaceHolder cp = (ContentPlaceHolder)Form.FindControl("ContentPlaceHolder1");
        Project p1 = new Project();
        p1.name = nameTB.Text;
        p1.type = typeTB.Text;
        p1.faculty = facultyRBL.SelectedValue;
        p1.year = short.Parse(yearTB.Text);
        p1.groupCode = groupCodeTB.Text;
        p1.shortDescription = shortdescriptiontxt.Text;
        p1.movie = movieTxt.Text;
        p1.projectLandingPage = landingPageTxt.Text;
        p1.personalNote = personalNotetxt.Text;
        p1.challenges = challengesTxt.Text;

        // load project img
        FileUpload flu1 = (FileUpload)cp.FindControl("projectImageFu");
        string path1 = Server.MapPath("." + "/Images/");
        string fname1 = path1 + flu1.FileName;
        flu1.SaveAs(fname1);
        p1.projectImageUrl = "Images/" + flu1.FileName;

        //load students
        for (int i = 1; i < 4; i++)
        {
            TextBox txtb = (TextBox)cp.FindControl("student" + i + "TB");
            FileUpload flu2 = (FileUpload)cp.FindControl("FileUpload" + i);
            Student s = new Student();
            s.name = txtb.Text;
            string path2 = Server.MapPath("." + "/Images/");
            string fname2 = path2 + flu2.FileName;
            flu2.SaveAs(fname2);
            s.imageUrl = @"..\Images\" + flu2.FileName; ;
            p1.students.Add(s);

        }

        //load goals
        for (int i = 1; i < 4; i++)
        {
            TextBox txtbd = (TextBox)cp.FindControl("DescriptionTxt" + i);
            TextBox txtbs = (TextBox)cp.FindControl("StatusTxt" + i);
            Goal g = new Goal(txtbd.Text, txtbs.Text);
            p1.goals.Add(g);
        }

        // load screenshot
        for (int i = 1; i < 6; i++)
        {
            TextBox t = (TextBox)cp.FindControl("DescriptionScreebtxt" + i);
            FileUpload flu3 = (FileUpload)cp.FindControl("ScreenshFu" + i);
            ScreenShot scsh = new ScreenShot();
            scsh.description = t.Text;

            string path3 = Server.MapPath("." + "/Images/");
            string fname3 = path3 + flu3.FileName;
            flu3.SaveAs(fname3);
            scsh.imageUrl = @"..\Images\" + flu3.FileName; ;
            p1.screenshots.Add(scsh);
        }

        //load advisor
        for (int i = 1; i < 4; i++)
        {
            TextBox txtbd = (TextBox)cp.FindControl("advisor" + i + "TB");
            p1.advisors.Add(txtbd.Text);
        }

        //load customer

        FileUpload flu5 = (FileUpload)cp.FindControl("logoFileUpload");
        string path = Server.MapPath("." + "/Images/");
        string fname = path + flu5.FileName;
        flu5.SaveAs(fname);

        Customer c = new Customer(customerNameTB.Text, @"..\Images\" + flu5.FileName, customerDescpitionTB.Text);

        //load intrestedParties
        string intrestedPartie = intrestedPartiesTB.Text;
        string[] intrestedParties = intrestedPartie.Split('\n');
        for (int i = 0; i < intrestedParties.Length; i++)
        {
            c.interstedParties.Add(intrestedParties[i]);
        }


        //load users
        string user = usersTB.Text;
        string[] users = user.Split('\n');
        for (int i = 0; i < users.Length; i++)
        {
            c.users.Add(users[i]);
        }
        p1.customers.Add(c);

        //load technologies
        string technologie = technologyTxt.Text;
        string[] technologies = technologie.Split(',');
        for (int i = 0; i < technologies.Length; i++)
        {
            p1.technologies.Add(technologies[i]);
        }

        //load Tags
        string Tag = tagsTB.Text;
        string[] Tags = Tag.Split(',');
        for (int i = 0; i < Tags.Length; i++)
        {
            p1.tags.Add(Tags[i]);
        }

        //load module
        for (int i = 1; i < 4; i++)
        {
            TextBox Mname = (TextBox)cp.FindControl("ModulNameTxt" + i);
            TextBox Mdec = (TextBox)cp.FindControl("ModulesDescTxt" + i);
            TextBox Mfe = (TextBox)cp.FindControl("modulesFeat" + i);
            Module m = new Module(Mname.Text, Mdec.Text);

            //load features
            string feature = Mfe.Text;
            string[] features = feature.Split('\n');
            for (int t = 0; t < features.Length; t++)
            {
                m.features.Add(features[t]);
            }
            p1.modules.Add(m);

        }

        Session["p1"] = p1;
        Response.Redirect("showProject.aspx");


    }

}