<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="EditHouse.aspx.cs" Inherits="Application.Admin.EditHouse" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MasterPlaceHolder" runat="server">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <div id="form">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Id" AssociatedControlID="form_id"></asp:Label>
                    <asp:TextBox runat="server" Enabled="false" CssClass="form-control" ID="form_id" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Name" AssociatedControlID="form_name"></asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="form_name" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="House type" AssociatedControlID="form_houseType"></asp:Label>
                    <asp:DropDownList
                        runat="server"
                        DataTextField="Name"
                        DataValueField="ID"
                        ID="form_houseType" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Description" AssociatedControlID="form_desc"></asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="form_desc" TextMode="MultiLine" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Image" AssociatedControlID="form_img"></asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="form_img" />
                </div>
                <asp:Button ID="form_save" runat="server" Text="Save" OnClick="form_save_Click" CssClass="btn btn-success" />
                <% if (!string.IsNullOrEmpty(Id))
                   {
                        %>
                        <asp:Button ID="form_delete" runat="server" Text="Delete" OnClick="form_delete_Click" CssClass="btn btn-danger" />
                        <%
                   } 
                %>
            </div>
        </div>
    </div>
</asp:Content>
