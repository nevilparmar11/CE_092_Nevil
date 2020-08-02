<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LAB_04_Task2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Login Page
    </title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: white;
        }
        .auto-style3 {
            width: 208px;
            color: white;
        }
        .auto-style4 {
            text-align: left;
            color: white;
        }
    </style>
</head>
<body style="background-color: #192A56">
    <center style="margin-top: 200px">
    <form id="form1" runat="server">
        <div class="auto-style1">

            <strong>Login Form<br />
            <br />
            </strong>

        </div>
            <table align="center" >
                <tr>
                    <td class="auto-style3">Username :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorusername" runat="server" ControlToValidate="uname" EnableClientScript="False" ErrorMessage="*Invalid username" ForeColor="Red" ValueToCompare="admin"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="upasswd" runat="server" type="password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorupassword" runat="server" ControlToValidate="upasswd" EnableClientScript="False" ErrorMessage="*Invalid Password" ForeColor="Red" ValueToCompare="admin"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <br />
                        <asp:Button ID="ulogin" runat="server" OnClick="LoginHandler" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
            </table>
    </form>
    </center>
</body>
</html>
