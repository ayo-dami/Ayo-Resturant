<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="pages_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td rowspan="4">
                <asp:Image ID="imgProduct" runat="server" CssClass="detailsImage" /> </td>
            <td><h2>
                <asp:Label ID="lblTitle" runat="server" ></asp:Label>
                
                </h2><hr /> 
                 <asp:Label ID="lblDescription" runat="server"  CssClass="detailsDescription"></asp:Label>
                <p>
                Product Number: <asp:Label ID="lblItemNr" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" Text="Available" CssClass="productPrice"></asp:Label>
                </p>
                <p>
                <asp:Label ID="lblPrice" runat="server" CssClass="detailsPrice"></asp:Label>
                </p>
                <p>
                Quantity : <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList>
                </p>
                <p>

                <asp:Button ID="btnAdd" runat="server" CssClass="button" OnClick="Button1_Click" Text="Add Product" />
                </p>
                <p>
                <asp:Label ID="lblResult" runat="server"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td>
               
                <br />
                <br />
               
            </td>
            <td>
                <br/>
                &nbsp;<br />
                <br />
            </td>
        </tr>

        <tr>
            <td></td>
            
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
</asp:Content>

