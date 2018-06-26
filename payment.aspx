<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function PrintPage() {
            window.print();
        }
</script>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-weight: 700;
        }
        .style2
        {
            font-size: medium;
        }
        .style3
        {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        INVOICE <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Label" 
            Visible="False"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataKeyNames="pid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                <asp:BoundField DataField="transid" HeaderText="transid" 
                    SortExpression="transid" />
                <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" 
                    SortExpression="pid" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="totalprice" HeaderText="totalprice" 
                    SortExpression="totalprice" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [cart] WHERE [uid] = @original_uid" 
            InsertCommand="INSERT INTO [cart] ([uid], [transid], [pid], [qty], [totalprice]) VALUES (@uid, @transid, @pid, @qty, @totalprice)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [cart] WHERE ([uid] = @uid)" 
            
            UpdateCommand="UPDATE [cart] SET [uid] = @uid, [transid] = @transid, [qty] = @qty, [totalprice] = @totalprice WHERE [pid] = @original_pid AND [uid] = @original_uid AND [transid] = @original_transid AND [qty] = @original_qty AND [totalprice] = @original_totalprice">
            <DeleteParameters>
                <asp:ControlParameter ControlID="Label1" Name="original_uid" 
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
                <asp:ControlParameter ControlID="Label1" Name="uid" PropertyName="Text" 
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
        <asp:Button ID="Button1" runat="server" Text="OK" 
            OnClientClick="javascript:PrintPage();" onclick="Button1_Click" />
    
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="EXIT" 
            Visible="False" />
    
    </div>
    </form>
</body>
</html>
