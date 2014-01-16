<%@ Page Title="" Language="C#" MasterPageFile="~/tar2/Tar2 - Project Web Site/Site.master"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="tar2_Tar2___Project_Web_Site_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div class="serchDiv">
        <asp:RadioButton ID="BArbutn" runat="server" Text="BA" GroupName="A" />
        <asp:RadioButton ID="IErbutn" runat="server" Text="EI" GroupName="A" />
        <asp:ComboBox ID="SearchCbox" runat="server"  
            >
            <asp:ListItem>customer</asp:ListItem>
            <asp:ListItem>technologies</asp:ListItem>
            <asp:ListItem>students</asp:ListItem>
            <asp:ListItem>tages</asp:ListItem>
            <asp:ListItem>groupcode</asp:ListItem>
        </asp:ComboBox>
        &nbsp;
        <asp:TextBox ID="valueTxt" runat="server" Width="128px"></asp:TextBox>
        <asp:Button runat="server" Text="חפש" onclick="Unnamed1_Click"  />
    </div>
</asp:Content>
