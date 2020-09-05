<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Lab6_Task2.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: white;
            text-anchor: start;
        }
        .auto-style2 {
            width: 50%;
            background-color: #ccd6f6;
            color: black;
            border-radius: 45px;
        }
    </style>
</head>
<body bgcolor ="#0a192f">
    <form id="form1" runat="server">
        <div class="auto-style1">
                
            <h1><strong>Order Details</strong></h1>

            <br />
            <br />
            <table align="center" class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="cosubmit" runat="server" OnClick="cosubmit_Click" Text="Total" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Label ID="all" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
&nbsp;<br />

&nbsp;</div>
    </form>
</body>
</html>
