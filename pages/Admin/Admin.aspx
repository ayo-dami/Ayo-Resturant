<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="pages_Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style1">Administrator Page - Products</h1>
    <p class="auto-style1">Use this page to update and manage the products and information on the news and about us page.</p>
    <h2 class="auto-style2">Manage Products</h2>
    <p class="auto-style2">Use the table below to, Update or Delete Product. (changes will be added to the products page).</p>
    <br />
    <asp:LinkButton ID="lbAddButton" runat="server" CssClass="button" PostBackUrl="~/pages/Admin/AdminProducts.aspx" OnClick="lbAddButton_Click">Add New Product</asp:LinkButton>
<br />
<br />
<asp:GridView ID="grdProducts" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsProducts" Width="100%" CellPadding="3" OnRowEditing="grdProducts_RowEditing" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="TypeId" HeaderText="TypeId" SortExpression="TypeId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([TypeId], [Name], [Price], [Description], [Image]) VALUES (@TypeId, @Name, @Price, @Description, @Image)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [TypeId] = @TypeId, [Name] = @Name, [Price] = @Price, [Description] = @Description, [Image] = @Image WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TypeId" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TypeId" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />

<asp:LinkButton ID="lbAddButton0" runat="server" CssClass="button" PostBackUrl="~/pages/Admin/AdminProductTypes.aspx">Add New Product Type</asp:LinkButton>
<br />
<br />
<asp:GridView ID="grdProductTypes" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsProductTypes" Width="50%" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="sdsProductTypes" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [ProductTypes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProductTypes] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [ProductTypes]" UpdateCommand="UPDATE [ProductTypes] SET [Name] = @Name WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
   
    <br />
    <br />
    <br />

</asp:Content>

