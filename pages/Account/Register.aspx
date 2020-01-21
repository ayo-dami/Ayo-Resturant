<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="pages_Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Literal ID="litStatus" runat="server"></asp:Literal>
</p>
<p>
    UserName:</p>
<p>
    <asp:TextBox ID="txtUserName" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    Password:</p>
<p>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
</p>
<p>
    Confirm Password:</p>
<p>
    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
</p>
    <p>
        First Name:</p>
    <p>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="inputs"></asp:TextBox>
</p>
    <p>
        Last Name:</p>
    <p>
        <asp:TextBox ID="txtLastName" runat="server" CssClass="inputs"></asp:TextBox>
</p>
    <p>
        Address:</p>
    <p>
        <asp:TextBox ID="txtAddress" runat="server" CssClass="inputs"></asp:TextBox>
</p>
    <p>
        Post Code:</p>
    <p>
        <asp:TextBox ID="txtPostCode" runat="server" CssClass="inputs"></asp:TextBox>
</p>
    <p>
        &nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Button" />
</p>
</asp:Content>

