<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EM_test.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login </title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
       
    <form id="form1" runat="server">
         <div >
        <table>
            <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="ubox" runat="server"></asp:TextBox></td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Username" ControlToValidate="ubox"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="pbox" runat="server" TextMode="Password"></asp:TextBox></td>
                 <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="pbox"></asp:RequiredFieldValidator>
                    </td>
            </tr>
           
            <tr>
            <td class="auto-style1">
                <asp:Button ID="Lbutton" runat="server" Text="Login" OnClick="Lbutton_Click" />
            </td>
                <td class="auto-style1">
    
                    &nbsp;</td>
                </tr>
        </table>
 
    
    </div>
    </form>
</body>
</html>
