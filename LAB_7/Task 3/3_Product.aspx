<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_Product.aspx.cs" Inherits="Lab7_Task3.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color: #0a192f;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <center>
            <h1 style="color: white;">Products</h1>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style2" DataKeyNames="pid" DataSourceID="SqlDataSource1" Height="121px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="255px" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
 
            <br />
            <br />
 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [pid] = @original_pid AND [name] = @original_name AND [Description] = @original_Description AND [Category] = @original_Category AND [price] = @original_price" InsertCommand="INSERT INTO [product] ([name], [Description], [Category], [price]) VALUES (@name, @Description, @Category, @price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [name] = @name, [Description] = @Description, [Category] = @Category, [price] = @price WHERE [pid] = @original_pid AND [name] = @original_name AND [Description] = @original_Description AND [Category] = @original_Category AND [price] = @original_price">
                <DeleteParameters>
                    <asp:Parameter Name="original_pid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Category" Type="String" />
                    <asp:Parameter Name="original_price" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="original_pid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Category" Type="String" />
                    <asp:Parameter Name="original_price" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

            <asp:Label ID="Label1" runat="server" Text="All Products"><a href="3_AllProduct.aspx">All Products</a></asp:Label>
            </center>
    </form>
</body>
</html>
