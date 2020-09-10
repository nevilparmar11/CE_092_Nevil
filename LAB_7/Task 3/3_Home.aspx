<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_Home.aspx.cs" Inherits="Lab7_Task3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Select Specific Product
    </title>
    <style>
        body{
            background-color: #0a192f;
        }
    </style>
</head>
<body>
    <h1 align="center" style="color: white;">Home Page</h1>
    <form id="form1" runat="server">

        <center>
        <p style="color: white;">ENTER PRODUCT-ID</p>
        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="180px" align ="center"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="39px" Text="Submit" Width="99px" OnClick="Button1_Click" align ="center"/>
        </center>

    </form>
</body>
</html>
