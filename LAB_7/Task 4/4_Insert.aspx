<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_Insert.aspx.cs" Inherits="Lab7_Task4.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        center {
            color: white;
        }
        
        a {
            color: cyan;
        }
    </style>
</head>
<body bgcolor="#0a192f">
    <form id="form1" runat="server">
        <center>
            <h1>Insert Data</h1>
            NAME : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            SEM : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            CPI : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            CONTACT NO. : <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            EMAIL ID : <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" style="height: 28px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Update_data"><a href="4_Update.aspx">Update_Data</a></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Delete_data"><a href="4_Delete.aspx">Delete_Data</a></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Show_data"><a href="4_Show.aspx">Show_Data</a></asp:Label>
        </center>
    </form>
</body>
</html>
