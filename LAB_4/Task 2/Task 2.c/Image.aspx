<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Image.aspx.cs" Inherits="Lab_04_Task2.Image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Button ID="view" runat="server" Height="27px" OnClick="handleVisibility" Text="view" Width="62px" />
            <br />
            
        </div>
        <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl="~/images/MyLogo.png" Visible="False" Width="250px" />
        <br />
    </form>
</body>
</html>
