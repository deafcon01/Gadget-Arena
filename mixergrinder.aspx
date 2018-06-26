<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mixergrinder.aspx.cs" Inherits="mixergrinder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-weight: 700;
            font-size: x-large;
        }
        body {background-image:url("search.jpg");
      background-size: cover;
    background-repeat: no-repeat;
    }


        .style2
        {}


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" CssClass="style1" Text="Mixer Grinder"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="pid" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal" CssClass="style2" Height="404px" Width="682px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" 
                ReadOnly="True" SortExpression="pid" />
            <asp:BoundField DataField="category" HeaderText="category" 
                SortExpression="category" />
            <asp:BoundField DataField="brand_name" HeaderText="brand_name" 
                SortExpression="brand_name" />
            <asp:BoundField DataField="prod_name" HeaderText="prod_name" 
                SortExpression="prod_name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:BoundField DataField="weight" HeaderText="weight" 
                SortExpression="weight" />
            <asp:BoundField DataField="power_consmption" HeaderText="power_consmption" 
                SortExpression="power_consmption" />
            <asp:BoundField DataField="img_url" HeaderText="img_url" 
                SortExpression="img_url" />
            <asp:TemplateField HeaderText="image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="50px" 
                        ImageUrl='<%# Eval("img_url") %>' Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>
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
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Product] WHERE [pid] = @original_pid AND [category] = @original_category AND [brand_name] = @original_brand_name AND [prod_name] = @original_prod_name AND [price] = @original_price AND [size] = @original_size AND [weight] = @original_weight AND [power_consmption] = @original_power_consmption AND [img_url] = @original_img_url" 
        InsertCommand="INSERT INTO [Product] ([category], [brand_name], [prod_name], [price], [size], [weight], [power_consmption], [img_url]) VALUES (@category, @brand_name, @prod_name, @price, @size, @weight, @power_consmption, @img_url)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [pid], [category], [brand_name], [prod_name], [price], [size], [weight], [power_consmption], [img_url] FROM [Product] WHERE ([category] = @category)" 
        UpdateCommand="UPDATE [Product] SET [category] = @category, [brand_name] = @brand_name, [prod_name] = @prod_name, [price] = @price, [size] = @size, [weight] = @weight, [power_consmption] = @power_consmption, [img_url] = @img_url WHERE [pid] = @original_pid AND [category] = @original_category AND [brand_name] = @original_brand_name AND [prod_name] = @original_prod_name AND [price] = @original_price AND [size] = @original_size AND [weight] = @original_weight AND [power_consmption] = @original_power_consmption AND [img_url] = @original_img_url">
        <DeleteParameters>
            <asp:Parameter Name="original_pid" Type="Int32" />
            <asp:Parameter Name="original_category" Type="String" />
            <asp:Parameter Name="original_brand_name" Type="String" />
            <asp:Parameter Name="original_prod_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_size" Type="String" />
            <asp:Parameter Name="original_weight" Type="String" />
            <asp:Parameter Name="original_power_consmption" Type="String" />
            <asp:Parameter Name="original_img_url" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="brand_name" Type="String" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="size" Type="String" />
            <asp:Parameter Name="weight" Type="String" />
            <asp:Parameter Name="power_consmption" Type="String" />
            <asp:Parameter Name="img_url" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="category" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="brand_name" Type="String" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="size" Type="String" />
            <asp:Parameter Name="weight" Type="String" />
            <asp:Parameter Name="power_consmption" Type="String" />
            <asp:Parameter Name="img_url" Type="String" />
            <asp:Parameter Name="original_pid" Type="Int32" />
            <asp:Parameter Name="original_category" Type="String" />
            <asp:Parameter Name="original_brand_name" Type="String" />
            <asp:Parameter Name="original_prod_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_size" Type="String" />
            <asp:Parameter Name="original_weight" Type="String" />
            <asp:Parameter Name="original_power_consmption" Type="String" />
            <asp:Parameter Name="original_img_url" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
