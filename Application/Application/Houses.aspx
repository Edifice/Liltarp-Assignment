<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Houses.aspx.cs" Inherits="Application.Houses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="true" />
        </div>
    </div>
</asp:Content>
