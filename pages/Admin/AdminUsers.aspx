<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminUsers.aspx.cs" Inherits="pages_Admin_AdminUsers" %>

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
    <h1 class="auto-style1">Administrator Page - Manage Users</h1>
<p class="auto-style1">Update and view user information</p>
    <p class="auto-style2">
        <asp:Button ID="btnAddUser" runat="server" CssClass="button" Text="Add New User" />
    </p>
    <p class="auto-style2">
        <asp:GridView ID="grdUsers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="sdsUsersAsp" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CheckBoxField DataField="EmailConfirmed" HeaderText="EmailConfirmed" SortExpression="EmailConfirmed" />
                <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
                <asp:BoundField DataField="SecurityStamp" HeaderText="SecurityStamp" SortExpression="SecurityStamp" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:CheckBoxField DataField="PhoneNumberConfirmed" HeaderText="PhoneNumberConfirmed" SortExpression="PhoneNumberConfirmed" />
                <asp:CheckBoxField DataField="TwoFactorEnabled" HeaderText="TwoFactorEnabled" SortExpression="TwoFactorEnabled" />
                <asp:BoundField DataField="LockoutEndDateUtc" HeaderText="LockoutEndDateUtc" SortExpression="LockoutEndDateUtc" />
                <asp:CheckBoxField DataField="LockoutEnabled" HeaderText="LockoutEnabled" SortExpression="LockoutEnabled" />
                <asp:BoundField DataField="AccessFailedCount" HeaderText="AccessFailedCount" SortExpression="AccessFailedCount" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
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
        <asp:SqlDataSource ID="sdsUsersAsp" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName)" SelectCommand="SELECT * FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                <asp:Parameter Name="PasswordHash" Type="String" />
                <asp:Parameter Name="SecurityStamp" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                <asp:Parameter Name="UserName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                <asp:Parameter Name="PasswordHash" Type="String" />
                <asp:Parameter Name="SecurityStamp" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sdsUsers" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [UserInfo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UserInfo] ([GUID], [FirstName], [LastName], [Address], [PostalCode]) VALUES (@GUID, @FirstName, @LastName, @Address, @PostalCode)" SelectCommand="SELECT * FROM [UserInfo]" UpdateCommand="UPDATE [UserInfo] SET [GUID] = @GUID, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [PostalCode] = @PostalCode WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GUID" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostalCode" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GUID" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostalCode" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        <asp:GridView ID="grdUsers0" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="sdsUserInfo" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" InsertVisible="False" />
                <asp:BoundField DataField="GUID" HeaderText="GUID" SortExpression="GUID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
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
        <asp:SqlDataSource ID="sdsUserInfo" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [UserInfo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UserInfo] ([GUID], [FirstName], [LastName], [Address], [PostalCode]) VALUES (@GUID, @FirstName, @LastName, @Address, @PostalCode)" SelectCommand="SELECT * FROM [UserInfo]" UpdateCommand="UPDATE [UserInfo] SET [GUID] = @GUID, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [PostalCode] = @PostalCode WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GUID" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostalCode" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GUID" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostalCode" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
</asp:SqlDataSource>
    <p class="auto-style2">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

