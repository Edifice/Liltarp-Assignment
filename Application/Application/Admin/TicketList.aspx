<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="TicketList.aspx.cs" Inherits="Application.Admin.TicketList" EnableEventValidation="false"%>

<asp:Content ID="Content2" ContentPlaceHolderID="MasterPlaceHolder" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <h2>Unsolved tickets:</h2>
            <asp:DataList ID="tableUnsolved" runat="server" CssClass="table" OnItemCommand="tableUnsolved_ItemCommand" DataKeyField="IDSerializable">
                <HeaderTemplate>
                    <th>House</th>
                    <th>Name</th>
                    <th>E-mail</th>
                    <th>Phone</th>
                    <th style="max-width: 30%">Description</th>
                    <th>Actions</th>
                </HeaderTemplate>
                <ItemTemplate>
                    <td><%# Eval("HouseIdSerializable") %></td>
                    <td><%# Eval("NameSerializable") %></td>
                    <td><%# Eval("EmailSerializable") %></td>
                    <td><%# Eval("PhoneSerializable") %></td>
                    <td><%# Eval("UserTextSerializable") %></td>
                    <td><asp:Button runat="server" CommandName="solve" Text="Solve it!" CssClass="btn btn-success"/></td>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <h2>Solved tickets:</h2>
            <asp:DataList ID="tableSolved" runat="server" CssClass="table" OnItemCommand="tableUnsolved_ItemCommand" DataKeyField="IDSerializable">
                <HeaderTemplate>
                    <th>House</th>
                    <th>Name</th>
                    <th>E-mail</th>
                    <th>Phone</th>
                    <th style="max-width: 30%">Description</th>
                    <th>Solved by</th>
                    <th>Actions</th>
                </HeaderTemplate>
                <ItemTemplate>
                    <td><%# Eval("HouseIdSerializable") %></td>
                    <td><%# Eval("NameSerializable") %></td>
                    <td><%# Eval("EmailSerializable") %></td>
                    <td><%# Eval("PhoneSerializable") %></td>
                    <td><%# Eval("UserTextSerializable") %></td>
                    <td><%# Eval("SolvedBySerializable") %></td>
                    <td><asp:Button runat="server" CommandName="unsolve" Text="deSolve it!" CssClass="btn btn-danger"/></td>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
