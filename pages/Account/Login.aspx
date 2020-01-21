<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="pages_Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Literal ID="litStatus" runat="server"></asp:Literal>
<br />
<br />
UserName:<br />
<br />
<asp:TextBox ID="txtUserName" runat="server" CssClass="inputs"></asp:TextBox>
<br />
<br />
Password:<br />
<br />
<asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
<br />
<asp:Button ID="btnLogin" runat="server" CssClass="button" OnClick="btnLogin_Click" Text="Login" />
<br />
</asp:Content>

