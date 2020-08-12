<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="OptionalTask.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cross Page Posting Demo</title>
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
    <div>
        <asp:Label ID="Label1" runat="server" 

        class="whiteText"></asp:Label>
    </div>
    </form>
       </center>
</body>
</html>
