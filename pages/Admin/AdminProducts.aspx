<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminProducts.aspx.cs" Inherits="pages_Admin_AdminProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Name:</p>
<p>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
</p>
<p>
    Type:</p>
<p>
    <asp:DropDownList ID="ddlType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" SelectCommand="SELECT * FROM [ProductTypes] ORDER BY [Name]"></asp:SqlDataSource>
</p>
<p>
    Price:</p>
<p>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
</p>
<p>
    Image:</p>
<p>
    <asp:DropDownList ID="ddlimage" runat="server">
    </asp:DropDownList>
</p>
<p>
    Description:</p>
<p>
    <asp:TextBox ID="txtDesc" runat="server" Height="85px" TextMode="MultiLine" Width="277px"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="button" />
</p>
<p>
    <asp:Label ID="lblResult" runat="server"></asp:Label>
</p>
</asp:Content>

