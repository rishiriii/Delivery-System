<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="DeliverySystem.Main" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <style type="text/css">
        body {
            font-family: Magneto;
            background-color: #EDF7F6;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: white;
            border: 2px solid #000;
            padding: 100px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 2.5em;
            color: #FF0000;
            margin-bottom: 40px;
        }
        .btn {
            color: white;
            padding: 15px 30px;
            font-size: 1.2em;
            border: none;
            border-radius: 5px;
            margin: 10px;
            cursor: pointer;
            transition: background-color 0.75s ease-in;
        }
        .btn-green {
            background-color: #A881AF;
        }
        .btn-green:hover {
            background-color: #80669D;
        }
        .btn-blue {
            background-color: #5ADBB5;
        }
        .btn-blue:hover {
            background-color: #33B249;
        }
        .button-row {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>DeliverEase</h1>
            <div class="button-row">
                <asp:Button ID="CreateUser" runat="server" Text="Create Account" CssClass="btn btn-green" OnClick="CreateUser_Click" />
            </div>
            <div class="button-row">
                <asp:Button ID="btnUserLogin" runat="server" Text="User Login" CssClass="btn btn-blue" OnClick="btnUserLogin_Click" />
                <asp:Button ID="btnAdminLogin" runat="server" Text="Admin Login" CssClass="btn btn-blue" OnClick="btnAdminLogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
