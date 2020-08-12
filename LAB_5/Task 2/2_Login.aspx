<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_Login.aspx.cs" Inherits="LAB5_TASK2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: white;
        }
        .auto-style2 {
            width: 70%;
            border-color: #000000;
            background-color: #0a192f;
        }
        .auto-style3 {
            width: 269px;
            color: white;
        }
        .auto-style5 {
            width: 269px;
            height: 57px;
            color: white;
        }
        .auto-style6 {
            height: 57px;
            color: white;
        }
        .auto-style7 {
            width: 269px;
            text-align: center;
            height: 45px;
            color: white;
        }
        .auto-style8 {
            height: 45px;
        }
        .auto-style9 {
            width: 269px;
            text-align: center;
            height: 58px;
            color: white;
        }
        .auto-style10 {
            height: 58px;
        }
    </style>
</head>
<body bgcolor="#0a192f">
    <h1 class="auto-style1">Login</h1>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style7">Username :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="usernameValidate" runat="server" ControlToValidate="uname" EnableClientScript="False" ErrorMessage="CompareValidator" ForeColor="Red" ValueToCompare="admin">Invalid Username</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Password : </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="passwd" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="passwordValidate" runat="server" ControlToValidate="passwd" EnableClientScript="False" ErrorMessage="CompareValidator" ForeColor="Red" ValueToCompare="admin">Invalid Password</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="loginerr" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
