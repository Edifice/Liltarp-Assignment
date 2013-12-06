<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Application.Admin.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="alert"><asp:Label runat="server" ID="alert"></asp:Label></div>
        E-mail：
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        Password：
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>

        <input type="button" OnClick="history.go(-1); return false;" value="Back" />
        <asp:Button ID="btnOk" runat="server" OnClick="BtnOk_Click" Text="Ok" Width="53px" />

    </div>
</asp:Content>
