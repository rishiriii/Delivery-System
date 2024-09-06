<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="DeliverySystem.EmployeeLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <h1>Admin Login</h1>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Employee ID:"></asp:Label>
            <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>