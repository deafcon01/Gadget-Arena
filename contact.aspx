<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {background-image:url('Contact.png');
      background-size: 1400px 700px;
    background-repeat: no-repeat;
            font-size: x-large;
        }
        .style1
        {
            font-weight: 700;
            font-size: xx-large;
            font-family: Calibri;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" CssClass="style1" Text="Contact Us"></asp:Label>
    
    </div>
    </form>
    <p>
        Mail Us :<a href="mailto:gadgetarena123@gmail.com"> www.gadgetarena123@gmail.com</a></p>
    <p>
        Contact: +91 9831123456</p>
    <p>
        Official Address: EM 4/1, Sector - V, Salt Lake</p>
</body>
</html>
