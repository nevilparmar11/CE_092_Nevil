<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Lab6_Task1.Edit" %>

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
        }
        .auto-style4 {
            text-align: left;
            height: 39px;
            color: white;
        }
        .auto-style5 {
            width: 60%;
            border-color: white;
            color: white;
        }
        .auto-style7 {
            width: 249px;
            height: 39px;
            color: white;
        }
        .auto-style8 {
            width: 187px;
            height: 38px;
            color: white;
        }
        .auto-style9 {
            height: 38px;
            color: white;
        }
        .auto-style11 {
            text-align: left;
            height: 42px;
            color: white;
        }
        .auto-style12 {
            width: 187px;
            height: 42px;
            color: white;
        }
        .auto-style13 {
            width: 187px;
            height: 43px;
            color: white;
        }
        .auto-style14 {
            text-align: left;
            height: 43px;
            color: white;
        }
        .auto-style15 {
            width: 187px;
            height: 36px;
            color: white;
        }
        .auto-style16 {
            text-align: center;
            height: 36px;
            color: white;
        }
        .auto-style18 {
            text-align: center;
            height: 40px;
            color: white;
        }
        .auto-style19 {
            width: 187px;
            height: 40px;
            color: white;
        }
        .auto-style20 {
            width: 187px;
            height: 41px;
            color: white;
        }
        .auto-style21 {
            text-align: center;
            height: 41px;
            color: white;
        }
        .auto-style22 {
            width: 249px;
            height: 42px;
            color: white;
        }
        .auto-style23 {
            width: 249px;
            height: 45px;
            color: white;
        }
        .auto-style24 {
            text-align: left;
            height: 45px;
            color: white;
        }
        .auto-style25 {
            width: 249px;
            height: 40px;
            color: white;
        }
        .auto-style26 {
            text-align: left;
            height: 40px;
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
            <h1><strong>Edit Student Details</strong></h1>

            <br />
            <table align="center" class="auto-style2" border="1">
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">Search by ID</td>
                </tr>
                <tr>
                    <td class="auto-style12">Student_ID : </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="estu_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style14">
                        <asp:Button ID="esearch" runat="server" Text="Search" OnClick="esearch_Click" />
&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"><a href = "Insert.aspx">Insert new Data</a></td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style18"><a href = "Delete.aspx">Delete Existing Data</a></td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"><a href = "Show.aspx">View Data</a></td>
                </tr>
            </table>

            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <table align="center" class="auto-style5">
                    <tr>
                        <td class="auto-style22">Student_Name :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="estu_nm" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rq_estu_nm" runat="server" ControlToValidate="estu_nm" ErrorMessage="*Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">Semester :</td>
                        <td class="auto-style24">
                            <asp:TextBox ID="estu_sem" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rq_estu_sem" runat="server" ControlToValidate="estu_sem" ErrorMessage="*Sem Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">Mobile_No :</td>
                        <td class="auto-style26">
                            <asp:TextBox ID="estu_num" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rq_estu_num" runat="server" ControlToValidate="estu_num" ErrorMessage="*Mobile number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="check_estu_num" runat="server" ControlToValidate="estu_num" ErrorMessage="*Invalid Mobile no" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">E-mail_ID :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="estu_eid" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rq_estu_eid" runat="server" ControlToValidate="estu_eid" ErrorMessage="*Email-ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25"></td>
                        <td class="auto-style26">
                            <asp:Button ID="esubmit" runat="server" Text="Submit" OnClick="esubmit_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
