<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="DeliverySystem.CreateUser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create User</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
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
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 2em;
            color: #007ACC;
            margin-bottom: 20px;
        }
        .input-field {
            margin: 10px 0;
            display: flex;
            
        }
        .input-field label {
            font-size: 1em;
            color: #333;
            margin-right: 10px;
            text-align: right;
            width: 150px; 
        }
        .input-field input {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 25%;
            max-width: 300px;
        }
        .btn {
            background-color: #007ACC;
            color: white;
            padding: 15px 30px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            margin: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #005f99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Create User</h1>
            <div class="input-field">
                <label for="txtPhoneNumber">Phone Number:</label><br />
                <asp:TextBox ID="textPhoneNumber" runat="server" Placeholder="Phone Number" />
            </div>
            <div class="input-field">
                <label for="txtPassword">Password:</label><br />
                <asp:TextBox ID="textPassword" runat="server" TextMode="Password" Placeholder="Password" />
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Create Account" CssClass="btn" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
