<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOrder.aspx.cs" Inherits="DeliverySystem.AddOrder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Order</title>
    <style>
        .form-container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-container h2 {
            text-align: center;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
        }
        .form-container input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .form-container input[type="submit"], .form-container input[type="button"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin-bottom: 10px;
        }
        .form-container input[type="submit"]:hover, .form-container input[type="button"]:hover {
            background-color: #45a049;
        }
        .form-container .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <h2>Add New Order</h2>
        <asp:Label ID="lblCustName" runat="server" Text="Customer Name:" />
        <asp:TextBox ID="txtCustName" runat="server" />
        
        <asp:Label ID="lblRecName" runat="server" Text="Recipient Name:" />
        <asp:TextBox ID="txtRecName" runat="server" />
        
        <asp:Label ID="lblAddress" runat="server" Text="Address:" />
        <asp:TextBox ID="txtAddress" runat="server" />
        
        <asp:Label ID="lblShipmentId" runat="server" Text="Shipment ID:" />
        <asp:TextBox ID="txtShipmentId" runat="server" />
        
        <asp:Label ID="lblShipmentPartner" runat="server" Text="Shipment Partner:" />
        <asp:TextBox ID="txtShipmentPartner" runat="server" />
        
        <asp:Label ID="lblCustPhoneNo" runat="server" Text="Customer Phone Number:" />
        <asp:TextBox ID="txtCustPhoneNo" runat="server" />
        
        <asp:Label ID="lblDeliName" runat="server" Text="Delivery Name:" />
        <asp:TextBox ID="txtDeliName" runat="server" />
        
        <asp:Label ID="lblStatus" runat="server" Text="Status:" />
        <asp:TextBox ID="txtStatus" runat="server" />
        
        <asp:Button ID="btnSubmit" runat="server" Text="Add Order" OnClick="btnSubmit_Click" />
        
        
        <asp:Button ID="btnGoBack" runat="server" Text="Go Back" OnClick="btnGoBack_Click" />

        <asp:Label ID="lblMessage" runat="server" CssClass="error" />
    </form>
</body>
</html>
