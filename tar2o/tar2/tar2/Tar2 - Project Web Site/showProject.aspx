<%@ Page Title="" Language="C#" MasterPageFile="~/tar2/Tar2 - Project Web Site/Site.master"
    AutoEventWireup="true" CodeFile="showProject.aspx.cs" Inherits="tar2_Tar2___Project_Web_Site_showProject" %>

<%@ Reference Control="~/tar2/Tar2 - Project Web Site/Controls/Student.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="fillUploadDiv">
        <table>
            <tr>
                <td>
                    <asp:Label CssClass="Label" ID="lbl" runat="server" Text="Please enter the group name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="TextBox" ID="FileNametb" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="LoadBtn" runat="server" Text="Load" OnClick="LoadBtn_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Accordion ID="Accordion1" runat="Server" SelectedIndex="100" HeaderCssClass="accordionHeader"
        HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent"
        AutoSize="none" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40"
        RequireOpenedPane="false" SuppressHeaderPostbacks="true">
        <Panes>
            <asp:AccordionPane ID="AcpProject" runat="server" HeaderCssClass="accordionHeader"
                HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent">
                <Header>
                    Project
                </Header>
                <Content>
                    <asp:TabContainer ID="TabContainerProject" runat="server">
                        <asp:TabPanel ID="Description" runat="server" HeaderText="Description" Enabled="true"
                            ScrollBars="Auto" OnDemandMode="Once">
                            <ContentTemplate>
                                <div class="DivHe">
                                    <asp:Label ID="DescriptionLbl" runat="server" Text=""></asp:Label>
                                </div>
                                <br />
                                <asp:PlaceHolder ID="LogoPH" runat="server"></asp:PlaceHolder>
                            </ContentTemplate>
                        </asp:TabPanel>
                        <asp:TabPanel Class="DivHe" ID="Details" runat="server" HeaderText="General Details"
                            Enabled="true" ScrollBars="Auto" OnDemandMode="Once">
                            <ContentTemplate>
                                שם הפרוייקט:
                                <asp:Label ID="nameLbl" runat="server" Text=""></asp:Label><br />
                                סוג:
                                <asp:Label ID="typeLbl" runat="server" Text=""></asp:Label><br />
                                פקולטה:
                                <asp:Label ID="facultyLbl" runat="server" Text=""></asp:Label><br />
                                שנה:
                                <asp:Label ID="yearLbl" runat="server" Text=""></asp:Label><br />
                                <asp:PlaceHolder ID="TagsPH" runat="server">
                                    <h3>
                                        טגים:
                                    </h3>
                                </asp:PlaceHolder>
                                <br />
                                <asp:PlaceHolder ID="advisorPH" runat="server">
                                    <h3>
                                        מנחים:
                                    </h3>
                                </asp:PlaceHolder>
                            </ContentTemplate>
                        </asp:TabPanel>
                        <asp:TabPanel ID="Links" runat="server" HeaderText="Links" Enabled="true" ScrollBars="Auto"
                            OnDemandMode="Once">
                            <ContentTemplate>
                                <p>
                                    <asp:HyperLink ID="movieHl" runat="server"></asp:HyperLink></p>
                                <p>
                                    <asp:HyperLink ID="landingPageHl" runat="server"></asp:HyperLink></p>
                            </ContentTemplate>
                        </asp:TabPanel>
                        <asp:TabPanel ID="Moredetails" runat="server" HeaderText="More details" Enabled="true"
                            ScrollBars="Auto" OnDemandMode="Once">
                            <ContentTemplate>
                                <div class="DivHe">
                                    <h3>
                                        אתגרים:</h3>
                                    <asp:Label CssClass="Label" ID="chalLbl" runat="server" Text=""></asp:Label><br />
                                    <asp:PlaceHolder ID="technologyPH" runat="server">
                                        <h3>
                                            טכנולוגיות:
                                        </h3>
                                    </asp:PlaceHolder>
                                    <h4>
                                        הערות:</h4>
                                    <asp:Label CssClass="Label" ID="PersonalNOtslbl" runat="server" Text=""></asp:Label><br />
                                </div>
                            </ContentTemplate>
                        </asp:TabPanel>
                    </asp:TabContainer>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AcpStudents" runat="server" HeaderCssClass="accordionHeader"
                HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent">
                <Header>
                    Students
                </Header>
                <Content>
                    <p id="students">
                        <asp:PlaceHolder ID="StudentsPH" runat="server"></asp:PlaceHolder>
                    </p>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AcpGoals" runat="server" HeaderCssClass="accordionHeader"
                HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent">
                <Header>
                    Goals
                </Header>
                <Content>
                    <p class="DivHe">
                        <asp:PlaceHolder ID="GoalsPH" runat="server"></asp:PlaceHolder>
                    </p>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AcpScreenshots" runat="server" HeaderCssClass="accordionHeader"
                HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent">
                <Header>
                    Screen Shots
                </Header>
                <Content>
                    <p>
                        <asp:PlaceHolder ID="ScreenshotsPH" runat="server"></asp:PlaceHolder>
                    </p>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AcpCustomers" runat="server" HeaderCssClass="accordionHeader"
                HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent">
                <Header>
                    Customers
                </Header>
                <Content>
                    <p>
                        <asp:PlaceHolder ID="CustomersPH" runat="server"></asp:PlaceHolder>
                    </p>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="Acpmodule" runat="server" HeaderCssClass="accordionHeader"
                HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent">
                <Header>
                    Modules
                </Header>
                <Content>
                    <asp:PlaceHolder ID="modulesPH" runat="server"></asp:PlaceHolder>
                </Content>
            </asp:AccordionPane>
        </Panes>
    </asp:Accordion>
</asp:Content>
