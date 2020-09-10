<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LinqDemoWithNumbers.aspx.cs" Inherits="LAB7_TASK1.LinqDemoWithNumbers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        LINQ Demo with List
    </title>
    <style>
        td {
            text-align: center;
            text-decoration-color: white;
            color: white;
        }
    </style>
</head>
<body style="background-color: #192A56">
    <form id="form1" runat="server">
        <div>

            <table style="width:100%;" border ="1">
                <tr>
                    <td>
                        Even Numbers 
                    </td>
                    <td>
                        <asp:Label ID="evenL" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Odd Numbers 
                    </td>
                    <td>
                        <asp:Label ID="oddL" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        All Numbers 
                    </td>
                    <td>
                        <asp:Label ID="allL" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Max Number 
                    </td>
                    <td>
                        <asp:Label ID="maxL" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                   <td>
                        Min Number 
                    </td>
                    <td>
                        <asp:Label ID="minL" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                   <td>
                        Average 
                    </td>
                    <td>
                        <asp:Label ID="avgL" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
