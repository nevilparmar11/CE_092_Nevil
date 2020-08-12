<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_Home.aspx.cs" Inherits="LAB5_TASK2.Home" %>

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
            width: 40%;
            background-color: #0a192f;
        }
        .auto-style3 {
            width: 206px;
            color: white;
        }
    </style>
</head>
<body bgcolor="#0a192f">
    <h1 class="auto-style1">WELCOME TO E-SHOP</h1>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="ssname" runat="server" ForeColor="Yellow"></asp:Label>
            <br />
            <h2>What are you looking for ?</h2>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style3">1.<br />
                        2.</td>
                    <td>
                        <asp:RadioButtonList ID="MainItems" runat="server" AutoPostBack="True" OnSelectedIndexChanged="MainItems_SelectedIndexChanged">
                            <asp:ListItem>Electronics</asp:ListItem>
                            <asp:ListItem>Books</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>

                <tr>
                    <td>
                        <br />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style3">selected value :</td>
                    <td>
                        <asp:Label ID="selectedRadioButton" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Panel ID="MainPanel" runat="server" Visible="False">
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" SelectionMode="Multiple">
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox>
                &nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="placeOrder" runat="server" OnClick="placeOrder_Click" Text="Place Order" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <strong>&nbsp; Selected Items :-<br />
                <br />
                </strong>
                <asp:Label ID="selectedItems" runat="server"></asp:Label>
            </asp:Panel>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
