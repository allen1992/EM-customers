<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="EM_test.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
         <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="namebox" runat="server" ></asp:TextBox></td>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="agebox" runat="server"></asp:TextBox></td>
            </tr>
         <tr>
                <td>Gender</td>
                <td>
                    <asp:TextBox ID="gbox" runat="server"></asp:TextBox></td>
            </tr>
         <tr>
                <td>Date of Birth</td>
                <td>
                    <asp:TextBox ID="date" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
        <td>
            Login Email Address
        </td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
   
            <td>Password </td>
            <td>
                <asp:TextBox ID="Pbox" runat="server"></asp:TextBox>
            </td>
        </tr>
        
            <tr>
            <td class="auto-style1">
                <asp:Button ID="Save" runat="server" Text="OK" OnClick="Save_Click" />
            </td>
                <td class="auto-style1">
                    <asp:Button ID="Reset" runat="server" Text="Reset" />
                </td>
                <td>
                    <asp:Button ID="Delete" runat="server" Text="Delete Profile" />
                </td>
                </tr>

    </table>
    </div>
    </form>
</body>
</html>
