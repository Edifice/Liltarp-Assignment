<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="HouseList.aspx.cs" Inherits="Application.Admin.HouseList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MasterPlaceHolder" runat="server">

    <asp:DataList ID="List" runat="server">
        <ItemTemplate>
            <a href="/Admin/EditHouse.aspx?id=<%# Eval("ID") %>"><%# Eval("Name") %></a>
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
