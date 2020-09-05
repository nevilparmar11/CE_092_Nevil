<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Lab6_Task1.Delete" %>

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
            width: 50%;
            border-color: white;
            color: white;
        }
        .auto-style4 {
            text-align: left;
            height: 45px;
            color: white;
        }
        .auto-style5 {
            width: 274px;
            height: 47px;
            color: white;
        }
        .auto-style6 {
            text-align: left;
            height: 47px;
            color: white;
        }
        .auto-style7 {
            width: 274px;
            height: 45px;
            color: white;
        }
        .auto-style8 {
            width: 274px;
            height: 40px;
            color: white;
        }
        .auto-style9 {
            height: 40px;
            color: white;
        }
        .auto-style10 {
            width: 274px;
            height: 39px;
            color: white;
        }
        .auto-style11 {
            height: 39px;
            color: white;
        }
        .auto-style12 {
            width: 274px;
            height: 36px;
            color: white;
        }
        .auto-style13 {
            height: 36px;
            color: white;
        }
        a {
            color: cyan;
        }
    </style>
</head>
<body style="background-color: #0a192f;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>Delete Student Details</h1>

            <br />
            Enter Student&#39;s ID , and press Delete<br />
            <br />
            <table align="center" class="auto-style2" border="1">
                <tr>
                    <td class="auto-style5">Student_ID : </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="dstu_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style4">
                        <asp:Button ID="dsubmit" runat="server" Text="Delete" OnClick="dsubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"><a href="Insert.aspx">Insert New Data</a></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"><a href="Edit.aspx">Update Data</a></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"><a href="Show.aspx">View Data</a></td>
                </tr>
            </table>
            <br />

        </div>
    </form>
</body>
</html>
