<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateDetails.aspx.cs" Inherits="EM_test.UpdateDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Details </title>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#udatepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      minDate: "-100Y", maxDate: 0
    });
  } );
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr><asp:Label ID="Label1" runat="server" Text="Please enter your updated details"></asp:Label></tr>
         <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="unamebox" runat="server" MaxLength="50" ></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ControlToValidate="unamebox"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter text only" ControlToValidate="unamebox" ValidationExpression="^[0-9A-Za-z ]+$"></asp:RegularExpressionValidator>
                     </td>

      
            </tr>
            
         <tr>
                <td>Gender</td>
                <td>
                     <asp:DropDownList ID="Gender" runat="server">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
            
            </tr>
         <tr>
                <td>Date of Birth</td>
                <td>
                    <asp:TextBox ID="udatepicker" runat="server" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select date of birth" ControlToValidate="udatepicker"></asp:RequiredFieldValidator>
                </td>
             
            </tr>
        <tr>
        <td>
           Email Address
        </td>
            <td>
                <asp:TextBox ID="email" runat="server" MaxLength="30" ReadOnly="True"></asp:TextBox>
            &nbsp;( Email Address ReadOnly)</td>

        </tr>
        <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="uphonebox" runat="server" MaxLength="9"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter phonenumber " ControlToValidate="uphonebox"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter only digits" ControlToValidate="uphonebox" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>

                     </td>
            </tr>
        
            <tr>
            <td class="auto-style1">
                <asp:Button ID="Save" runat="server" Text="Update" OnClick="Save_Click" style="height: 26px" />
            </td>
                <td class="auto-style1">
                    <asp:Button ID="Populate" runat="server" Text="Current Details" OnClick="Populate_Click" CausesValidation="False" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Homepage" OnClick="Button1_Click" CausesValidation="False" />
                </td>
                <td>
                    &nbsp;</td>
                </tr>

    </table>
    </div>
    </form>
</body>
</html>
