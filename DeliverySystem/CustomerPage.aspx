<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerPage.aspx.cs" Inherits="DeliverySystem.CustomerPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Orders</title>
     
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <h1>My Orders</h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="Customer" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="Customer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderId], [Sender], [Reciver], [Address], [Status], [CustPhoneNo] FROM [Orders] WHERE ([CustPhoneNo] = @CustPhoneNo)">
            <SelectParameters>
                <asp:SessionParameter Name="CustPhoneNo" SessionField="PhoneNumber" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
