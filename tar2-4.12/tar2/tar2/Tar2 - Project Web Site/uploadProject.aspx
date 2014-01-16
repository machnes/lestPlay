<%@ Page Title="" Language="C#" MasterPageFile="~/tar2/Tar2 - Project Web Site/Site.master"
    AutoEventWireup="true" CodeFile="uploadProject.aspx.cs" Inherits="tar2_Tar2___Project_Web_Site_uploadProject" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"> 
<asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> </asp:ToolkitScriptManager>
     <p class="form-title"> Please fill in the project details:</p>
    <asp:Panel ID="Panel1" runat="server">
        <div class="form-container">
            <div class="form-title">
                
                
                Project Name:</div>
            <asp:TextBox ID="nameTB" class="form-field" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nameTB"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="form-title">
                Type:</div>
            <asp:TextBox ID="typeTB" class="form-field" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="typeTB"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="form-title">
                Tags:</div>
            <asp:TextBox ID="tagsTB" class="form-field" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tagsTB"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="form-title">
                Description:</div>
            <asp:TextBox ID="shortdescriptiontxt" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="shortdescriptiontxt"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
             
            <asp:Button ID="Button1" class="submit-button"  runat="server" Text="Next" OnClick="Button1_Click" /> 
            <progress max="100" value="5"></progress>
            <br />
            <br />
        </div>
      
        <%--Type:
           
           
                <asp:TextBox ID="typeTB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="typeTB"
                   ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
           
        --%>
        <%-- Tags:
           
           
                <asp:TextBox ID="tagsTB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="tagsTB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            --<%--%>
     
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="form-container">
            <br />
            <div class="form-title">
                Faculty:</div>
            <div class="form-title">
                <asp:RadioButtonList ID="facultyRBL" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>IE</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="facultyRBL"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator></div>
            <br />
            <div class="form-title">
                Advisors:</div>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="advisor1TB" class="form-field" runat="server"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="advisor1TB"
                            ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="advisor2TB" class="form-field" runat="server"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="advisor2TB"
                            ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="advisor3TB" class="form-field" runat="server"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="advisor3TB"
                            ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <div class="form-title">
                Year:</div>
            <asp:TextBox ID="yearTB" class="form-field" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="yearTB"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="yearTB"
                ErrorMessage="Not a valid year format, must be a 4 digits integer." ClientValidationFunction="formatValidation"
                ForeColor="Red"></asp:CustomValidator>
            <div class="form-title">
                Group Code:</div>
            <asp:TextBox ID="groupCodeTB" class="form-field" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="groupCodeTB"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Button ID="Button2" class="submit-button" runat="server" Text="Next" OnClick="Button2_Click" /><br />
            <br />
            <progress max="100" value="12">
            </progress>
            <br />
            <br />
        </div>
        <%--   Faculty:
           
                <asp:RadioButtonList ID="facultyRBL" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>IE</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="facultyRBL"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
        --%>
        <%-- Advisors:
            
                <asp:TextBox ID="advisor1TB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="advisor1TB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            
                <asp:TextBox ID="advisor2TB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="advisor2TB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            
                <asp:TextBox ID="advisor3TB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="advisor3TB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
        --%>
        <%--  Year:
            
                <asp:TextBox ID="yearTB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="yearTB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            
            
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="yearTB"
                    ErrorMessage="Not a valid year format, must be a 4 digits integer." ClientValidationFunction="formatValidation"
                    ForeColor="Red"></asp:CustomValidator>
        --%>
        <%--  Group Code:
           
                <asp:TextBox ID="groupCodeTB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="groupCodeTB"
                   ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
        --%>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <div class="form-container">
            <br />
            <div class="form-title">
                Project Image:</div>
            <div class="form-title">
                <asp:FileUpload ID="projectImageFu" runat="server" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="projectImageFu"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator></div>
            <div class="form-title">
                Project Landing Page:</div>
            <asp:TextBox ID="landingPageTxt" class="form-field" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="landingPageTxt"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="form-title">
                Project Movie:</div>
            <asp:TextBox ID="movieTxt" class="form-field" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="movieTxt"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="form-title">
                Technology:</div>
            <asp:TextBox ID="technologyTxt" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ControlToValidate="technologyTxt"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="techLbl" runat="server" Text=" (',') הפרד בין הטכנולוגיות ע&quot;י פסיק"></asp:Label>
            <div class="form-title">
                Challenges:</div>
            <asp:TextBox ID="challengesTxt" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="challengesTxt"
                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="form-title">
                Personal Note:</div>
            <asp:TextBox ID="personalNotetxt" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" class="submit-button" runat="server" Text="Next" OnClick="Button3_Click" /> <br />
      
        <br />
        <progress max="100" value="30">
        </progress>
        <br />
        <br />
          </div>
        <%-- Project Image:
            
                <asp:FileUpload ID="projectImageFu" runat="server" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="projectImageFu"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
        --%>
        <%--  Project Landing Page:
            
                <asp:TextBox ID="landingPageTxt" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="landingPageTxt"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
        --%>
        <%-- Project Movie:
           
                <asp:TextBox ID="movieTxt" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="movieTxt"
                   ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
        --%>
        <%-- Technology:
           
                <asp:TextBox ID="technologyTxt" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ControlToValidate="technologyTxt"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
           
                <asp:Label ID="techLbl" runat="server" Text=" (',') הפרד בין הטכנולוגיות ע&quot;י פסיק"></asp:Label>
        --%>
        <%-- Challenges:
           
                <asp:TextBox ID="challengesTxt" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="challengesTxt"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
        --%>
        <%--   Personal Note:
            
                <asp:TextBox ID="personalNotetxt" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
        --%>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
            <div class="form-container">
                <br />
                <table>
                    <tr>
                        <td>
                            <div class="form-title">
                                Student 1 Name
                            </div>
                            <asp:TextBox ID="student1TB" class="form-field" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <div class="form-title">
                                Add a Photo Student</div>
                            <div class="form-title">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="student1TB"
                                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="FileUpload1"
                                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-title">
                                Student 2 Name
                            </div>
                            <asp:TextBox ID="student2TB" class="form-field" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <div class="form-title">
                                Add a Photo Student</div>
                            <div class="form-title">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="student2TB"
                                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="FileUpload2"
                                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-title">
                                Student 3 Name</div>
                            <asp:TextBox ID="student3TB" class="form-field" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <div class="form-title">
                                Add a Photo Student</div>
                            <div class="form-title">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="student3TB"
                                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="FileUpload3"
                                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator></div>
                        </td>
                    </tr>
                </table>
                <div class="form-title">
                    Goals:
                </div>
                <table>
                    <tr>
                        <td>
                            <div class="form-title">
                                Description:</div>
                        </td>
                        <td>
                            <div class="form-title">
                                Status:
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="DescriptionTxt1" class="form-field_small" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ControlToValidate="DescriptionTxt1"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="StatusTxt1" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ControlToValidate="StatusTxt1"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="DescriptionTxt2" class="form-field_small" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" ControlToValidate="DescriptionTxt2"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="StatusTxt2" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ControlToValidate="StatusTxt2"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="DescriptionTxt3" class="form-field_small" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" ControlToValidate="DescriptionTxt3"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="StatusTxt3" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" ControlToValidate="StatusTxt3"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button4" class="submit-button" runat="server" Text="Next" OnClick="Button4_Click" /><br />
                <progress max="100" value="30">
                </progress>
                <br />
                <br />
            </div>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
            <div class="form-container">
                <br />
                <br />
                <div class="form-title_big">
                    Screen Shots:
                </div>
                <table>
                    <tr>
                        <td>
                            <div class="form-title">
                                Description:</div>
                            <asp:TextBox ID="DescriptionScreebtxt1" class="form-field" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="DescriptionScreebtxt1"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <div class="form-title">
                                <asp:FileUpload ID="ScreenshFu1" runat="server" />
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="ScreenshFu1"
                                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator></div>
                        </td>
                        <td>
                            <div class="form-title">
                                Description:</div>
                            <asp:TextBox ID="DescriptionScreebtxt2" class="form-field" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="DescriptionScreebtxt2"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="form-title">
                                <asp:FileUpload ID="ScreenshFu2" runat="server" /></div>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="ScreenshFu2"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-title">
                                Description:</div>
                            <asp:TextBox ID="DescriptionScreebtxt3" class="form-field" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="DescriptionScreebtxt3"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="form-title">
                                <asp:FileUpload ID="ScreenshFu5" runat="server" /></div>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="ScreenshFu3"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <div class="form-title">
                                Description:</div>
                            <asp:TextBox ID="DescriptionScreebtxt4" class="form-field" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="DescriptionScreebtxt4"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="form-title">
                                <asp:FileUpload ID="ScreenshFu3" runat="server" /></div>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="ScreenshFu4"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-title">
                                Description:</div>
                            <asp:TextBox ID="DescriptionScreebtxt5" class="form-field" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="DescriptionScreebtxt5"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="form-title">
                                <asp:FileUpload ID="ScreenshFu4" runat="server" /></div>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="ScreenshFu5"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button5" class="submit-button" runat="server" Text="Next" OnClick="Button5_Click" /><br />
            </div>
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server">
            <div class="form-container">
                <div class="form-title_big">
                    Modules:
                </div>
                <table>
                    <tr>
                        <td>
                            <div class="form-title">
                                Name:</div>
                        </td>
                        <td>
                            <div class="form-title">
                                Description:</div>
                        </td>
                        <td>
                            <div class="form-title">
                                Features:</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ModulNameTxt1" class="form-field_small" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="ModulNameTxt1"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="ModulesDescTxt1" class="form-field_small" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="ModulesDescTxt1"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="modulesFeat1" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:Label ID="featLbl1" runat="server" Text="(Enter) הפרד ע&quot;י ירידת שורה"></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="modulesFeat1"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ModulNameTxt2" class="form-field_small" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="ModulNameTxt2"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="ModulesDescTxt2" class="form-field_small" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="ModulesDescTxt2"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="modulesFeat2" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:Label ID="featLbl2" runat="server" Text="(Enter) הפרד ע&quot;י ירידת שורה"></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ControlToValidate="modulesFeat2"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ModulNameTxt3" class="form-field_small" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="ModulNameTxt3"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="ModulesDescTxt3" class="form-field_small" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="ModulesDescTxt3"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="modulesFeat3" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:Label ID="featLbl3" runat="server" Text="(Enter) הפרד ע&quot;י ירידת שורה"></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ControlToValidate="modulesFeat3"
                                ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button6" class="submit-button" runat="server" Text="Next" OnClick="Button6_Click" /><br />
            </div>
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server">
            <div class="form-container">
                <div class="form-title_big">
                    Customers:</div>
                <div class="form-title">
                    Name:</div>
                <asp:TextBox ID="customerNameTB" class="form-field" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="customerNameTB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                <div class="form-title">
                    Logo:</div>
                <br />
                <div class="form-title">
                    <asp:FileUpload ID="logoFileUpload" runat="server" /></div>
               
                <div class="form-title">
                    Description:
                </div>
                <asp:TextBox ID="customerDescpitionTB" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="customerDescpitionTB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                <div class="form-title">
                    Intrested Parties:</div>
                <asp:TextBox ID="intrestedPartiesTB" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="intrestedPartiesTB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="ipLbl" runat="server" Text="(Enter) הפרד ע&quot;י ירידת שורה"></asp:Label>
                <div class="form-title">
                    Users:</div>
                <asp:TextBox ID="usersTB" class="form-field" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="usersTB"
                    ErrorMessage="* This field is a must" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="usersLbl" runat="server" Text="(Enter) הפרד ע&quot;י ירידת שורה"></asp:Label>
                <br />
                <br />
                <asp:Button ID="submitBTN" class="submit-button" runat="server" Text="Upload Project"
                    OnClick="submitBTN_Click" Height="40px" Width="150px" />
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </div>
             
    </asp:Panel>
      </ContentTemplate></asp:UpdatePanel>
    </asp:Content>
    
