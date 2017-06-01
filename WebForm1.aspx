<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EM_test.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      minDate: "-100Y", maxDate: 0
    });
  } );
  </script>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div> <b>User details</b>
    <table>
         <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="namebox" runat="server" MaxLength="50" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ControlToValidate="namebox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter text only" ControlToValidate="namebox" ValidationExpression="^[0-9A-Za-z ]+$"></asp:RegularExpressionValidator>
                    </td>
      
            </tr>
           
         <tr>
                <td>Gender</td>
                <td>
                    <asp:DropDownList ID="Gender" runat="server">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            
            </tr>
         <tr>
                <td>Date of Birth</td>
                <td>
                    <asp:TextBox ID="datepicker" runat="server" TextMode="DateTime"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select date of birth" ControlToValidate="datepicker"></asp:RequiredFieldValidator>
                </td>
             
            </tr>
        <tr>
        <td>
          Email Address
        </td>
            <td>
                <asp:TextBox ID="email" runat="server" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter email" ControlToValidate="email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Email1" runat="server" ErrorMessage="Please enter valid email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>

        </tr>
         <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="phonebox" runat="server" MaxLength="9"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter phone number" ControlToValidate="phonebox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter only digits" ControlToValidate="phonebox" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
        
            <tr>
            <td class="auto-style1">
                <asp:Button ID="Save" runat="server" Text="OK" OnClick="Save_Click" />
            </td>
                <td>
                    <asp:Button ID="Home" runat="server" Text="Homepage" CausesValidation="False" OnClick="Home_Click" />
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                </tr>

    </table>
    </div>
    </form>
</body>
</html>
