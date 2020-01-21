<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminProductTypes.aspx.cs" Inherits="pages_Admin_AdminProductTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Name:</p>
<p>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
</p>
<p>
    <asp:Label ID="lblResult" runat="server"></asp:Label>
</p>
</asp:Content>

