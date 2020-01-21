<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="store.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
    .auto-style1 {
        width: 92%;
    }
    .auto-style2 {
        width: 671px;
    }
    .auto-style3 {
        text-align: right;
    }
    .auto-style4 {
        font-size: large;
    }
    .auto-style5 {
        font-weight: normal;
    }
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Food Menu</td>
            <td class="auto-style3"><span class="auto-style4"><span class="auto-style5"><em>Search for specific food</em></span> </span>
                <asp:TextBox ID="txtSearch" runat="server" Width="265px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnShowAll" runat="server" CssClass="button" OnClick="btnShowAll_Click" Text="Show All Products" />
            </td>
        </tr>
    </table>
</h1>
    <hr />
   <h2>Breakfast</h2> 
    <asp:Panel ID="pnlProducts" runat="server">
        </asp:Panel>

    

    <div style="clear: both"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <asp:Panel ID="pnlStarters">
    <h1>Starters</h1>
        <!--add dynamically like product pnl -->
    Deserts
        <!--add dynamically like product pnl -->
    Drinks
        <!--add dynamically like product pnl -->
    </asp:Panel>
</asp:Content>

