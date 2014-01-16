<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Customer.ascx.vb" Inherits="tar2_Tar2___Project_Web_Site_Controls_customer" %>
<div class="customer">
    <h2>
        <asp:Label ID="namelbl" runat="server" Text=""></asp:Label>
    </h2>
    <p>
        <asp:Image ID="logoUrlLinke" runat="server" CssClass ="customer"/></p>
    <p>
        <asp:Label ID="shortDescriptionlbl" runat="server" Text=""></asp:Label></p>
    <h3>
        בעלי עניין:
    </h3>
    <asp:BulletedList ID="interstedPartiesBltl" runat="server">
    </asp:BulletedList>
    <h3>
        משתמשים:
    </h3>
    <asp:BulletedList ID="usersBltl" runat="server">
    </asp:BulletedList>
</div>
