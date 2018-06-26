<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body {background-image:url("login.jpg");
      background-size:1400px 800px;
    background-repeat: no-repeat;
    }
        .style1
        {
            z-index: 1;
            left: 466px;
            top: 75px;
            position: absolute;
            height: 262px;
            width: 318px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
            BorderStyle="Solid" BorderWidth="1px" CssClass="style1" Font-Names="Verdana" 
            Font-Size="Medium" Height="258px" Width="314px" BorderPadding="4" 
            ForeColor="#333333">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="#FFFFFF" 
                Font-Size="0.9em" />
        </asp:Login>
    
        <br />
    
    </div>
    </form>
</body>
</html>
