<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addprod.aspx.cs" Inherits="addprod" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-family: "Lucida Fax";
        }
        .style2
        {
            font-size: large;
        }
        .style3
        {
            font-size: large;
        }
        .style4
        {
            font-size: large;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            font-size: large;
        }
        .style7
        {
            font-size: large;
        }
        .style8
        {
            font-size: large;
        }
        .style9
        {
            font-size: large;
        }
        .style10
        {
            font-size: large;
        }
        .style11
        {
            font-size: large;
        }
        .style12
        {
            font-size: large;
        }
        .style13
        {
            font-size: large;
        }
        .style14
        {
            font-size: large;
        }
        .style15
        {
            font-size: large;
        }
        .style16
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MANAGE PRODUCT<br />
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" CssClass="style16" DataKeyNames="pid" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" />
                <asp:BoundField DataField="brand_name" HeaderText="brand_name" 
                    SortExpression="brand_name" />
                <asp:BoundField DataField="prod_name" HeaderText="prod_name" 
                    SortExpression="prod_name" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                <asp:BoundField DataField="weight" HeaderText="weight" 
                    SortExpression="weight" />
                <asp:BoundField DataField="power_consmption" HeaderText="power_consmption" 
                    SortExpression="power_consmption" />
                <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
                <asp:BoundField DataField="processing_speed" HeaderText="processing_speed" 
                    SortExpression="processing_speed" />
                <asp:BoundField DataField="img_url" HeaderText="img_url" 
                    SortExpression="img_url" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="75px" 
                            ImageUrl='<%# Eval("img_url") %>' Width="65px" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [pid] = @original_pid " 
            InsertCommand="INSERT INTO [Product] ([category], [brand_name], [prod_name], [price], [stock], [size], [weight], [power_consmption], [ram], [processing_speed], [img_url]) VALUES (@category, @brand_name, @prod_name, @price, @stock, @size, @weight, @power_consmption, @ram, @processing_speed, @img_url)" 
            OldValuesParameterFormatString="original_{0}" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [Product]" 
            
            
            UpdateCommand="UPDATE [Product] SET [stock] = @stock WHERE [pid] = @original_pid ">
            <DeleteParameters>
                <asp:ControlParameter ControlID="Label15" Name="original_pid" 
                    PropertyName="Text" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox10" Name="category" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="brand_name" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="prod_name" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="price" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="TextBox4" Name="stock" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="TextBox5" Name="size" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="weight" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox7" Name="power_consmption" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox8" Name="ram" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox9" Name="processing_speed" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label14" Name="img_url" PropertyName="Text" 
                    Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="stock" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="Label15" Name="original_pid" 
                    PropertyName="Text" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="style2" Text="Brand Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Product Name:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" CssClass="style4" Text="Price:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" CssClass="style5" Text="Stock:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" CssClass="style6" Text="Size:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" CssClass="style7" Text="Weight:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" CssClass="style8" 
            Text="Power Consumption:"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" CssClass="style9" Text="RAM:"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" CssClass="style10" Text="Processsor:"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" CssClass="style11" Text="Category:"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" CssClass="style12" Text="Choose Image:"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" CssClass="style14" Text="Path:"></asp:Label>
        <asp:Label ID="Label14" runat="server" CssClass="style15"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Edit" />
&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Delete" />
        &nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" CssClass="style13"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Back To Admin" />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
