<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Application.Admin.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2 panel panel-default">
            <div class="panel-body">
                <% 
                    if (showAlert)
                    {
                %>
                <div class="alert alert-danger">
                    <asp:Label runat="server" ID="alert" />
                </div>
                <%
                } 
                %>

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtEmail" Text="E-mail" />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtPassword" Text="Password" />
                    <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <input type="button" onclick="history.go(-1); return false;" value="Back" class="btn btn-danger" />
                    <asp:Button ID="btnOk" runat="server" OnClick="BtnOk_Click" Text="Ok" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
