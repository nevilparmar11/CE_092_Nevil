<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LAB_04_Task2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>
        Registration Form
    </title>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color:white;
        }
        .auto-style2 {
            width: 80%;
            align-items: center;
            background-color: #192A56;
        }
        .auto-style3 {
            width: 324px;
        }
        .auto-style4 {
            width: 324px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 324px;
            height: 29px;
        }
        .auto-style8 {
            text-align: left;
            height: 29px;
        }
        .auto-style9 {
            width: 80%;
            height: 158px;
            margin-left: 155px;
            margin-right: 0px;
            background-color: #192A56;
        }
        .auto-style10 {
            width: 729px;
            text-align: center;
        }
        .auto-style11 {
            width: 729px;
            height: 26px;
            text-align: center;
        }
        .auto-style12 {
            height: 26px;
            text-align: center;
            width: 1074px;
        }
        .auto-style13 {
            text-align: center;
            width: 1074px;
        }
        .auto-style14 {
            width: 40%;
            height: 158px;
            margin-left: 155px;
            margin-right: 0px;
            background-color: #192A56;
        }
        table {
            border-style: ridge;
            border-width: 1px;
            border-color: white;
        }
    </style>
</head>
<body style="background-color:#192A56;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Registration Form<br />
            <br />
            </strong>
            <table align="center" border class="auto-style2" style="  border: 2px;border-color: white;">
                <tr>
                    <td class="auto-style3">Full Name :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" EnableClientScript="False" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Age :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="age" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" EnableClientScript="False" ErrorMessage="age must be in between 18 and 50" ForeColor="Red" MaximumValue="50" MinimumValue="18"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="passwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="passwd2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorpassword" runat="server" ControlToCompare="passwd" ControlToValidate="passwd2" EnableClientScript="False" ErrorMessage="unmatch password!" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Gender :</td>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                            <asp:ListItem Value="NF">Prefer not to say</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mobile No :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="number" runat="server" placeholder="Without +91"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="number" EnableClientScript="False" ErrorMessage="Invalid mobile number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Hobbies :</td>
                    <td class="auto-style6">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Reading</asp:ListItem>
                            <asp:ListItem>Astronomy</asp:ListItem>
                            <asp:ListItem>Travelling</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">State :</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="stateList" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="statList_SelectedIndexChanged">
                            <asp:ListItem Value="-1">select</asp:ListItem>
                            <asp:ListItem Value="GJ">Gujarat</asp:ListItem>
                            <asp:ListItem Value="MH">Maharastra</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">City :</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="cityList" runat="server" ViewStateMode="Enabled">
                            <asp:ListItem Value="-1">select</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style3">Pan No :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="pnumber" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="pnumber" ErrorMessage="Invalid pancard number" ForeColor="Red" onservervalidate="customValidator" ValidationExpression="[AB]\d{9}"></asp:CustomValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="abc" onclick="submit_Click" runat="server" Text="submit" />
                    </td>
                </tr>
            </table>
        </div>

        <br />
        <br />

        
        <table class="auto-style14 auto-style1">
            <tr>
                <td class="auto-style11">Name :</td>
                <td class="auto-style12">
                    <asp:Label ID="NameL" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Age : </td>
                <td class="auto-style13">
                    <asp:Label ID="AgeL" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Gender :</td>
                <td class="auto-style13">
                    <asp:Label ID="GenderL" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Mobile :</td>
                <td class="auto-style13">&nbsp;<asp:Label ID="MobileL" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Hobbies : </td>
                <td class="auto-style13">
                    <asp:Label ID="HobbieL" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">State :</td>
                <td class="auto-style13">
                    <asp:Label ID="StateL" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">City :</td>
                <td class="auto-style13">
                    <asp:Label ID="CityL" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Pan Number :</td>
                <td class="auto-style12">
                    <asp:Label ID="PanL" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
            
    </form>
</body>
</html>
