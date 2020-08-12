<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_CookieForm.aspx.cs" Inherits="LAB5_TASK1.CookieForm" %>

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
            height: 26px;
            color: white;
        }
        .auto-style4 {
            width: 235px;
            text-align: center;
            color: white;
        }
        .auto-style5 {
            height: 26px;
            width: 235px;
            text-align: center;
            color: white;
        }
        .auto-style6 {
            width: 50%;
            background-color: #0a192f;
        }
        .auto-style7 {
            width: 176px;
            text-align: center;
            color: white;
        }
    </style>
</head>
<body bgcolor="#0a192f">
    <h1 class="auto-style1">DEMO OF COOKIE</h1>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style4">Full Name :</td>
                    <td>
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="fnameValidate" runat="server" ControlToValidate="fname" EnableClientScript="False" ErrorMessage="full name required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Age :</td>
                    <td>
                        <asp:TextBox ID="age" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="ageValidate" runat="server" ControlToValidate="age" EnableClientScript="False" ErrorMessage="age required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Gender :</td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem Value="male">Male</asp:ListItem>
                            <asp:ListItem Value="female">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Fav Subject :</td>
                    <td>
                        <asp:TextBox ID="subject" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mobile No. :</td>
                    <td>
                        <asp:TextBox ID="number" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="numberValidate" runat="server" ControlToValidate="number" EnableClientScript="False" ErrorMessage="mobile number required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="csubmit" runat="server" OnClick="csubmit_Click" Text="Set Cookie" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="cdestroy" runat="server" CausesValidation="False" OnClick="cdestroy_Click" Text="Destroy Cookie" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="cview" runat="server" CausesValidation="False" OnClick="cview_Click" Text="View Cookie" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="errmsg1" runat="server" ForeColor="Red" Text="cookies are not set" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table align="center" class="auto-style6">
                <tr>
                    <td class="auto-style7">Full Name :</td>
                    <td>
                        <asp:Label class="auto-style7" ID="fnameL" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Age :</td>
                    <td>
                        <asp:Label ID="ageL" class="auto-style7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Gender :</td>
                    <td>
                        <asp:Label ID="genderL" class="auto-style7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Fav Subject :</td>
                    <td>
                        <asp:Label ID="subjectL" class="auto-style7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Mobile No :</td>
                    <td>
                        <asp:Label ID="numberL" class="auto-style7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <p>
        </p>
    </form>
</body>
</html>
