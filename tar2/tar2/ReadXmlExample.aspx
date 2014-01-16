<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReadXmlExample.aspx.cs" Inherits="ReadXmlExample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Enter the name of the XML : <asp:TextBox ID = "xmlFname" runat = "server"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="loadBTN" runat="server" onclick="loadBTN_Click" Text="LoadXML" />


    </div>
    </form>
</body>
</html>
