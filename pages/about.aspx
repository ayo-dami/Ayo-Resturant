<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="pages_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style4 {
        width: 864px;
    }
        .auto-style5 {
            width: 290px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="auto-style1">
        About Us</h2>
<table class="table">
    <tr>
        <td class="auto-style5">
            <asp:Image ID="img1" runat="server" />
        </td>
        <td>
            <asp:Label ID="lblText1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
<table class="table">
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblText2" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Image ID="img2" runat="server" CssClass="auto-style6" Height="150px" />
        </td>
    </tr>
</table>
</asp:Content>

