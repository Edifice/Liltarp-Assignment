<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Houses.aspx.cs" Inherits="Application.Houses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <div class="row">
                <asp:Repeater ID="HouseList" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-12 col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <img alt="img_<%# Eval("Id") %>" src="/Images/pictures/<%# Eval("Image") %>" style="width: 100%" />
                                        </div>
                                        <div class="col-sm-8">
                                            <%# Eval("Description") %>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"><%# Eval("Name") %></div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
