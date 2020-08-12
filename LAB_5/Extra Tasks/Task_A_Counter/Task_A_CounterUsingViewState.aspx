<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_A_CounterUsingViewState.aspx.cs" Inherits="OptionalTask.Task_A_CounterUsingViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Counter using Viewstate
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
    <div>
        <asp:Button ID="cmdIncrement" 
                    runat="server" 
                    OnClick="cmdIncrement_Click" 
                    Text="Increment" /><br />
        <br />
        <asp:Label ID="lblCount" class="whiteText" runat="server"></asp:Label>&nbsp;</div>
    </form>
        </center>
</body>
</html>
