<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HP-1.aspx.cs" Inherits="EM_test.HP_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage

    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
     <asp:Label ID="Label1" runat="server" Text="What would you like to do?"></asp:Label> 
        <br />
     <asp:HyperLink ID="HyperLink1" runat="server" Text="Add New Customer" NavigateUrl="~/WebForm1.aspx"></asp:HyperLink> 
     <br />
         <asp:HyperLink ID="HyperLink2" runat="server" Text="Modify/ Delete Customer Details" NavigateUrl="~/Modify1.aspx"></asp:HyperLink> 
      <br />
        <asp:HyperLink ID="HyperLink3" runat="server" Text="Logout" NavigateUrl="~/Login.aspx"></asp:HyperLink>
            </div>
    </form>
</body>
</html>
