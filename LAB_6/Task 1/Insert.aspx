<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="Lab6_Task1.Insert" %>

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
            color: white;
        }
        .auto-style5 {
            width: 256px;
            height: 45px;
            color: white;
        }
        .auto-style6 {
            text-align: left;
            height: 45px;
            color: white;
        }
        .auto-style7 {
            width: 256px;
            height: 48px;
            color: white;
        }
        .auto-style8 {
            text-align: left;
            height: 48px;
            color: white;
        }
        .auto-style9 {
            width: 256px;
            height: 43px;
            color: white;
        }
        .auto-style10 {
            text-align: left;
            height: 43px;
            color: white;
        }
        .auto-style11 {
            text-align: center;
            height: 45px;
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
            <h1>Insert Student Details</h1>

            <br />
            <table align="center" class="auto-style2" border="1">
                <tr>
                    <td class="auto-style5">Student_Name :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="stu_nm" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rq_stu_nm" runat="server" ControlToValidate="stu_nm" ErrorMessage="*Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Student_ID :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="stu_id" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rq_stu_id" runat="server" ControlToValidate="stu_id" ErrorMessage="*ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Semester :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="stu_sem" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rq_stu_sem" runat="server" ControlToValidate="stu_sem" ErrorMessage="*Sem Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Mobile_No :</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="stu_num" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rq_stu_num" runat="server" ControlToValidate="stu_num" ErrorMessage="*Mobile number Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="check_stu_num" runat="server" ControlToValidate="stu_num" ErrorMessage="*Invalid Mobile no" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">E-mail_ID :</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="stu_eid" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rq_stu_eid" runat="server" ControlToValidate="stu_eid" ErrorMessage="*Email-ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Button ID="isubmit" runat="server" OnClick="isubmit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11"><a href = "Edit.aspx">Update Data</a></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11"><a href = "Delete.aspx">Delete Data</a></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11"><a href = "Show.aspx">View Data</a></td>
                </tr>
            </table>

            <br />

        </div>
    </form>
</body>
</html>
