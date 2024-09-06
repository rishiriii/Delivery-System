<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="DeliverySystem.CustomerLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Login</title>
    <style type="text/css">
        .form-container {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-container button {
            width: 90%;
            padding: 10px;
            background-color: #336666;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #2c4d4d;
        }
        .error-message {
            color: red;
            text-align: center;
        }
        .btn-green {
            background-color: #28a745;
        }
        .btn-green:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Login</h2>
            <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" AssociatedControlID="txtPhone"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" />
            <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" OnTextChanged="txtPassword_TextChanged" />
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-green" OnClick="btnLogin_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="error-message"></asp:Label>
        </div>
    </form>
</body>
</html>



