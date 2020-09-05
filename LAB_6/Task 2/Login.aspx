<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lab6_Task2.Login" %>

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
            width: 60%;
            border-color: white;
        }
        .auto-style5 {
            width: 264px;
            height: 47px;
            color: white;
        }
        .auto-style6 {
            text-align: left;
            height: 47px;
            color: white;
        }
        .auto-style7 {
            width: 264px;
            height: 39px;
            color: white;
        }
        .auto-style8 {
            text-align: left;
            height: 39px;
            color: white;
        }
        .auto-style9 {
            width: 264px;
            height: 50px;
            color: white;
        }
        .auto-style10 {
            text-align: left;
            height: 50px;
            color: white;
        }
    </style>
</head>
<body bgcolor ="#0a192f">
    <form id="form1" runat="server">
        <div class="auto-style1">

            <h1><strong>Login Screen</strong></h1>

            <br />
            <br />
            <table align="center" border="1" class="auto-style2">
                <tr>
                    <td class="auto-style5">User ID :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="unm" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Password :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="upasswd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Button ID="usubmit" runat="server" Text="Login" OnClick="usubmit_Click" />
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
