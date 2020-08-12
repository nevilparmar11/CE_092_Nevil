<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="OptionalTask.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Cross Page Posting Demo
    </title>
    <style>
        .whiteText {
            font-size: xx-large;
            text-align:center;
            color: white;
        }
    </style>
</head>
<body bgcolor="#0a192f">
    <center>
    <form id="form1" runat="server">
     <div style="height: 200px"></div>
    <div class="whiteText">
    Enter your First Name : <asp:TextBox ID="TextBox1" 

    runat="server"></asp:TextBox><br />

         Enter your Last Name : <asp:TextBox ID="TextBox2" 

    runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" 

        Text="Submit Page to Itself"

            onclick="Button1_Click" /> <asp:Button

            ID="Button2" runat="server" 

            Text="Submit Page to Webform2.aspx"

            PostBackUrl="~/WebForm2.aspx" />
  
        <br />
        <br />
        <asp:Label ID="Label1" class="whiteText" runat="server" 

        ></asp:Label>
       </div>
    </form>
        </center>
</body>
</html>
