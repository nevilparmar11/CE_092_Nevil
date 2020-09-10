<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_Show.aspx.cs" Inherits="Lab7_Task4.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: white;
        }
        a {
            color: cyan;
        }
    </style>
</head>
<body bgcolor="#0a192f">
    <h1 align="center" class="auto-style1">Show Data</h1>
    <form id="form1" runat="server">
        <center>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" ReadOnly="True" SortExpression="sid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [sid] = @original_sid AND [name] = @original_name" InsertCommand="INSERT INTO [Student] ([name]) VALUES (@name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [sid], [name] FROM [Student]" UpdateCommand="UPDATE [Student] SET [name] = @name WHERE [sid] = @original_sid AND [name] = @original_name" OnSelecting="SqlDataSource1_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br 
            
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" ReadOnly="True" SortExpression="sid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                        <asp:BoundField DataField="cpi" HeaderText="cpi" SortExpression="cpi" />
                        <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [sid] = @original_sid AND [name] = @original_name AND [sem] = @original_sem AND [cpi] = @original_cpi AND [contactno] = @original_contactno AND [emailid] = @original_emailid" InsertCommand="INSERT INTO [Student] ([name], [sem], [cpi], [contactno], [emailid]) VALUES (@name, @sem, @cpi, @contactno, @emailid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Student] WHERE ([sid] = @sid)" UpdateCommand="UPDATE [Student] SET [name] = @name, [sem] = @sem, [cpi] = @cpi, [contactno] = @contactno, [emailid] = @emailid WHERE [sid] = @original_sid AND [name] = @original_name AND [sem] = @original_sem AND [cpi] = @original_cpi AND [contactno] = @original_contactno AND [emailid] = @original_emailid">
                <DeleteParameters>
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_sem" Type="String" />
                    <asp:Parameter Name="original_cpi" Type="String" />
                    <asp:Parameter Name="original_contactno" Type="String" />
                    <asp:Parameter Name="original_emailid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="sem" Type="String" />
                    <asp:Parameter Name="cpi" Type="String" />
                    <asp:Parameter Name="contactno" Type="String" />
                    <asp:Parameter Name="emailid" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="sid" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="sem" Type="String" />
                    <asp:Parameter Name="cpi" Type="String" />
                    <asp:Parameter Name="contactno" Type="String" />
                    <asp:Parameter Name="emailid" Type="String" />
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_sem" Type="String" />
                    <asp:Parameter Name="original_cpi" Type="String" />
                    <asp:Parameter Name="original_contactno" Type="String" />
                    <asp:Parameter Name="original_emailid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:Label ID="Label1" runat="server" Text="Update_data"><a href="4_Update.aspx">Update_Data</a></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Delete_data"><a href="4_Delete.aspx">Delete_Data</a></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Show_data"><a href="4_Insert.aspx">Insert_Data</a></asp:Label>
        </center>
    </form>
</body>
</html>
