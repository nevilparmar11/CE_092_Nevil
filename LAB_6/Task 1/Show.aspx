<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Lab6_Task1.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: white;
            align-content: center;
        }
    </style>
</head>
<body style="background-color: #0a192f;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style1"><strong>Show.aspx</strong></h1>
            <div class="auto-style1">
                <br />
                <asp:Panel ID="Panel1" runat="server">
                    <br />
                    <center>
                    <asp:GridView border="1" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="Database1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>   
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                            <asp:BoundField DataField="Mob_no" HeaderText="Mob_no" SortExpression="Mob_no" />
                            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="white" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="white" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="white" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    </center>
                    <asp:SqlDataSource ID="Database1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [Name], [Sem], [Mob_no], [email_id] FROM [Student]"></asp:SqlDataSource>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
