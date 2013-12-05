﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Application.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
        <div class="form-row">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtName">Name</asp:Label>
            <asp:TextBox runat="server" ID="txtName"/>
        </div>
        <div class="form-row">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="txtEmail">E-mail</asp:Label>
            <asp:TextBox runat="server" ID="txtEmail"/>
        </div>
        <div class="form-row">
            <asp:Label ID="Label3" runat="server" AssociatedControlID="txtPhone">Phone</asp:Label>
            <asp:TextBox runat="server" ID="txtPhone"/>
        </div>
        <div class="form-row">
            <asp:Label ID="Label4" runat="server" AssociatedControlID="ddHouse">House type</asp:Label>
            <asp:DropDownList 
                runat="server" 
                ID="ddHouse"
                DataTextField="Name"
                DataValueField="Id"/>
        </div>
        <asp:Button runat="server" Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click"/>
    </div>
</asp:Content>