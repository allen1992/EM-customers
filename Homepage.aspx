<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="EM_test.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div >
        <asp:Label ID="Label1" runat="server" Text="Homepage"></asp:Label>
        <br />
        
     <!--   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Details</asp:HyperLink> -->
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:HyperLink ID="update" runat="server" Text="Update your information" NavigateUrl="~/UpdateDetails.aspx"></asp:HyperLink>
        <br />
        <asp:HyperLink ID="delete" runat="server" NavigateUrl="~/DeleteDetails.aspx" Text="Delete account"></asp:HyperLink>
        <br />
        <asp:HyperLink ID="logout" runat="server" Text="Logout" NavigateUrl="~/Login.aspx"></asp:HyperLink>
    </div>
    </form>
</body>
</html>
