<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="DeliverySystem.EmployeePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Page</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            margin: 0 auto;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 30px;
            font-size: 28px;
            font-weight: bold;
        }

        .grid-container {
            margin-bottom: 20px;
        }

        .form-container {
            text-align: left;
            margin-top: 20px;
        }

        .form-container input[type="text"] {
            padding: 10px;
            width: 200px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-container input[type="submit"],
        .form-container input[type="button"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }

        .form-container input[type="submit"]:hover,
        .form-container input[type="button"]:hover {
            background-color: #45a049;
        }

        .form-container .spacer {
            margin-right: 15px;
        }

        .form-container .wide-spacer {
            margin-right: 30px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Order List</h1>

            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="Horizontal" Width="98%">
                    <Columns>
                        <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                        <asp:BoundField DataField="Sender" HeaderText="Cust_Name" SortExpression="Cust_Name" />
                        <asp:BoundField DataField="Reciver" HeaderText="Rec_name" SortExpression="Rec_name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="ShipmentId" HeaderText="ShipmentId" SortExpression="ShipmentId" />
                        <asp:BoundField DataField="ShipmentPartner" HeaderText="ShipmentPartner" SortExpression="ShipmentPartner" />
                        <asp:BoundField DataField="CustPhoneNo" HeaderText="CustPhoneNo" SortExpression="CustPhoneNo" />
                        <asp:BoundField DataField="Deli_name" HeaderText="Deli_name" SortExpression="Deli_name" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
            </div>

            <div class="form-container">
                <asp:TextBox ID="textorderId" runat="server" placeholder="Enter Order ID" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Status" CssClass="spacer" />
                <asp:Button ID="Button2" runat="server" Text="Delete Order" OnClick="Button2_Click" CssClass="spacer" />
                <asp:Button ID="Add" runat="server" Text="Add New Order" OnClick="Add_Click" CssClass="wide-spacer" />
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>

