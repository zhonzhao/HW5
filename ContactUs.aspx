<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" type="text/css" href="ZZStyle.css" />
    <title>Contact Us</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="otherMain">
            <strong><span class="header">Wicked Easy Recipes</span></strong>
            <h4>Using 5 Ingedients or Less!</h4>

            <a href="Default.aspx" title="Main">Home</a> | 
        <a href="NewRecipe.aspx" title="New Recipe">New Recipe</a> | 
        <a href="AboutUs.aspx" title="About Us">About Us</a> | 
        <a href="ContactUs.aspx" title="Contact">Contact</a>
            <br />
            <br />
            <img src="./Contact.jpg" alt="contact us" width="230"/>
            <div id="content">

                Your Email Address:<br />
                <br />
                <asp:TextBox ID="TBEmail" runat="server" Width="243px" Height="16px" style="margin-left: 0px"></asp:TextBox>
                <br />
                <br />
                <br />
                Your Message:<br />
                <br />
                <asp:TextBox ID="TBMessage" runat="server" Height="60px" TextMode="MultiLine" Width="290px"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="SendMessageBtn" runat="server" BackColor="LightCoral" BorderColor="White" BorderStyle="Solid" Height="30px" style="margin-left: 0px" Text="Send Message" Width="110px" Font-Bold="True" Font-Names="Comic Sans MS" />

            </div>
            <br />
            <br />
            <br />
            <em><span class="footer">© Created by Zhongli Zhao</span></em>
        </div>
    </form>
</body>
</html>