<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Application.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12">
            hello
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="true" />
        </div>
    </div>
</asp:Content>
