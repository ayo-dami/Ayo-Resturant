<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UpdateNews.aspx.cs" Inherits="pages_Admin_UpdateNews" %>

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
    <h1 class="auto-style1">Administrator - Update News</h1>
<h2>Manage News</h2>
<p>Update the information on the news page.</p>
<asp:GridView ID="grdProductTypes0" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsNews" Width="50%" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="news1" HeaderText="news1" SortExpression="news1" />
        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
    <asp:SqlDataSource ID="sdsNews" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [news] WHERE [ID] = @ID" InsertCommand="INSERT INTO [news] ([news1], [image]) VALUES (@news1, @image)" SelectCommand="SELECT * FROM [news]" UpdateCommand="UPDATE [news] SET [news1] = @news1, [image] = @image WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="news1" Type="String" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="news1" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
<h2>Manage About Us</h2>
<p class="auto-style2">Update the information on the About page.</p>
<asp:GridView ID="grdProductTypes1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsAboutUs" Width="50%" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="aboutText1" HeaderText="aboutText1" SortExpression="aboutText1" />
        <asp:BoundField DataField="aboutText2" HeaderText="aboutText2" SortExpression="aboutText2" />
        <asp:BoundField DataField="Image1" HeaderText="Image1" SortExpression="Image1" />
        <asp:BoundField DataField="Image2" HeaderText="Image2" SortExpression="Image2" />
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
    <asp:SqlDataSource ID="sdsAboutUs" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [aboutus] WHERE [ID] = @ID" InsertCommand="INSERT INTO [aboutus] ([ID], [aboutText1], [aboutText2], [Image1], [Image2]) VALUES (@ID, @aboutText1, @aboutText2, @Image1, @Image2)" SelectCommand="SELECT * FROM [aboutus]" UpdateCommand="UPDATE [aboutus] SET [aboutText1] = @aboutText1, [aboutText2] = @aboutText2, [Image1] = @Image1, [Image2] = @Image2 WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="aboutText1" Type="String" />
            <asp:Parameter Name="aboutText2" Type="String" />
            <asp:Parameter Name="Image1" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="aboutText1" Type="String" />
            <asp:Parameter Name="aboutText2" Type="String" />
            <asp:Parameter Name="Image1" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

