<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify1.aspx.cs" Inherits="EM_test.Modify1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modify Details</title>
    Enter the  details below and select your option
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="cust1" runat="server" Text="Enter customer email address"></asp:Label>
        <asp:TextBox ID="email1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter email" ControlToValidate="email1"></asp:RequiredFieldValidator>
        
        <br />
        <asp:Button ID="Details" runat="server" Text="Modify Details" OnClick="Details_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Delete Customer" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Homepage" OnClick="Button2_Click" CausesValidation="False" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emailaddress" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Emailaddress" HeaderText="Emailaddress" ReadOnly="True" SortExpression="Emailaddress" />
                <asp:BoundField DataField="Phonenumber" HeaderText="Phonenumber" SortExpression="Phonenumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Viewconnection %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
