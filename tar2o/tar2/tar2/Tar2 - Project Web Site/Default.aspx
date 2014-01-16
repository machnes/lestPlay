<%@ Page Title="" Language="C#" MasterPageFile="~/tar2/Tar2 - Project Web Site/Site.master"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="tar2_Tar2___Project_Web_Site_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div class="serchDiv">
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="valueTxt" runat="server" ToolTip="הכנס ערך לחיפוש"></asp:TextBox>
                </td>
                <td>
                    <asp:ComboBox ID="SearchCbox" runat="server" ToolTip="בחר שדה לחיפוש" DropDownStyle="DropDownList">
                        <asp:ListItem>customer</asp:ListItem>
                        <asp:ListItem>technologies</asp:ListItem>
                        <asp:ListItem>students</asp:ListItem>
                        <asp:ListItem>tages</asp:ListItem>
                        <asp:ListItem>groupcode</asp:ListItem>
                        <asp:ListItem>faculty</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:ComboBox>
                </td>
                <td>
                    <asp:Button ID="SearchBtn" runat="server" Text="חפש" OnClick="Unnamed1_Click" />
                </td>
                <td>
                    <asp:RadioButtonList ID="FacultyBtnl" runat="server" OnSelectedIndexChanged="Unnamed1_Click"
                        RepeatDirection="Horizontal" AutoPostBack="true">
                        <asp:ListItem>IE</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>All</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="SearchBtn" />
            <asp:AsyncPostBackTrigger ControlID="FacultyBtnl" />
        </Triggers>
        <ContentTemplate>
            <div id="accordion">
                <asp:PlaceHolder ID="SlidesPH" runat="server"></asp:PlaceHolder>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
