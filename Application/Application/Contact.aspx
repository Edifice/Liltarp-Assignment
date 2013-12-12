<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Application.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2 panel panel-default">
            <div class="panel-body">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtName">Name</asp:Label>
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtEmail">E-mail</asp:Label>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtPhone">Phone</asp:Label>
                    <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ddHouse">House type</asp:Label>
                    <asp:DropDownList
                        runat="server"
                        ID="ddHouse"
                        DataTextField="Name"
                        DataValueField="Id"
                        CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="txtPhone">Ticket Issue</asp:Label>
                    <asp:TextBox runat="server" ID="txtIssue" CssClass="form-control" />
                </div>

                <asp:Button runat="server" Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" CssClass="col-sm-6 col-sm-offset-3 btn btn-success" />
            </div>
        </div>
    </div>
</asp:Content>
