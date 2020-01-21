<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="pages_ShoppingCart"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlShoppingCart" runat="server">
        <asp:HiddenField ID="PressedButton" runat="server" />
    </asp:Panel>
    <table>
        <tr>
            <td class="auto-style1"><b>Total: </b></td>
            <td><asp:Literal ID="litTotal" runat="server" Text="" /></td>
        </tr>
        <tr>
            <td class="auto-style1"><b>VAT: </b></td>
            <td><asp:Literal ID="litVat" runat="server" Text="" ></asp:Literal></td>
        </tr>
        <tr>
            <td class="auto-style1"><b>Shipping: </b></td>
            <td>£ 15</td>
        </tr>
        <tr>
            <td class="auto-style1"><b>Total Amount: </b></td>
            <td><asp:Literal ID="litTotalAmount" runat="server" Text="" /></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:LinkButton ID="lnkContinue" runat="server" PostBackUrl="~/Index.aspx"
                    Text="Continue Shopping" />
                 &nbsp;OR 
                &nbsp;&nbsp;</td>
            <td> 
                <asp:Button ID="btnCheckOut" runat="server" PostBackUrl="~/Pages/Success.aspx"
                    CssClass="button" width="132px" Text="Continue Checkout" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <br />
            </td>
        </tr>
    </table>
    
</asp:Content>

