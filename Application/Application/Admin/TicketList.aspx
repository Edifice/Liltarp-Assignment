<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TicketList.aspx.cs" Inherits="Application.Admin.TicketList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <asp:Label runat="server" Text="Unsolved tickets:" ></asp:Label>
    <asp:GridView runat="server" ID="gv" AutoGenerateColumns="true" />
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="solved tickets:" ></asp:Label>
    <asp:GridView runat="server" ID="gv2" AutoGenerateColumns="true" />
</asp:Content>
