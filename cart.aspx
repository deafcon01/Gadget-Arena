<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-weight: 700;
        }
        body {background-image:url("cart.jpg");
      background-size: cover;
    background-repeat: no-repeat;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [payment] WHERE [sid] = @original_sid AND [uid] = @original_uid AND [transid] = @original_transid AND [pid] = @original_pid AND [qty] = @original_qty AND [totalprice] = @original_totalprice" 
            InsertCommand="INSERT INTO [payment] ([uid], [transid], [pid], [qty], [totalprice]) VALUES (@uid, @transid, @pid, @qty, @totalprice)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [payment]" 
            UpdateCommand="UPDATE [payment] SET [uid] = @uid, [transid] = @transid, [pid] = @pid, [qty] = @qty, [totalprice] = @totalprice WHERE [sid] = @original_sid AND [uid] = @original_uid AND [transid] = @original_transid AND [pid] = @original_pid AND [qty] = @original_qty AND [totalprice] = @original_totalprice">
            <DeleteParameters>
                <asp:Parameter Name="original_sid" Type="Int32" />
                <asp:Parameter Name="original_uid" Type="Int32" />
                <asp:Parameter Name="original_transid" Type="String" />
                <asp:Parameter Name="original_pid" Type="Int32" />
                <asp:Parameter Name="original_qty" Type="Int32" />
                <asp:Parameter Name="original_totalprice" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="Label5" Name="uid" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="Label6" Name="transid" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="Label7" Name="pid" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="Label8" Name="qty" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="Label9" Name="totalprice" PropertyName="Text" 
                    Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uid" Type="Int32" />
                <asp:Parameter Name="transid" Type="String" />
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="qty" Type="Int32" />
                <asp:Parameter Name="totalprice" Type="Int32" />
                <asp:Parameter Name="original_sid" Type="Int32" />
                <asp:Parameter Name="original_uid" Type="Int32" />
                <asp:Parameter Name="original_transid" Type="String" />
                <asp:Parameter Name="original_pid" Type="Int32" />
                <asp:Parameter Name="original_qty" Type="Int32" />
                <asp:Parameter Name="original_totalprice" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:Label ID="Label1" runat="server" CssClass="style1" Text="Cart"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="pid" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                <asp:BoundField DataField="transid" HeaderText="transid" 
                    SortExpression="transid" />
                <asp:BoundField DataField="pid" HeaderText="pid" 
                    SortExpression="pid" ReadOnly="True" />
                <asp:BoundField DataField="totalprice" HeaderText="totalprice" 
                    SortExpression="totalprice" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        &nbsp;<br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [cart] WHERE [uid] = @original_uid " 
            InsertCommand="INSERT INTO [cart] ([uid], [transid], [pid], [qty], [totalprice]) VALUES (@uid, @transid, @pid, @qty, @totalprice)" 
            SelectCommand="SELECT * FROM [cart] WHERE ([uid] = @uid)" 
            
            UpdateCommand="UPDATE [cart] SET [uid] = @uid, [transid] = @transid, [qty] = @qty, [totalprice] = @totalprice WHERE [pid] = @original_pid AND [uid] = @original_uid AND [transid] = @original_transid AND [qty] = @original_qty AND [totalprice] = @original_totalprice" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:ControlParameter ControlID="Label2" Name="original_uid" 
                    PropertyName="Text" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="uid" Type="Int32" />
                <asp:Parameter Name="transid" Type="String" />
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="qty" Type="Int32" />
                <asp:Parameter Name="totalprice" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="uid" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="uid" Type="Int32" />
                <asp:Parameter Name="transid" Type="String" />
                <asp:Parameter Name="qty" Type="Int32" />
                <asp:Parameter Name="totalprice" Type="Int32" />
                <asp:Parameter Name="original_pid" Type="Int32" />
                <asp:Parameter Name="original_uid" Type="Int32" />
                <asp:Parameter Name="original_transid" Type="String" />
                <asp:Parameter Name="original_qty" Type="Int32" />
                <asp:Parameter Name="original_totalprice" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Buy" />
    
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
