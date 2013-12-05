<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EditHouse.aspx.cs" Inherits="Application.Admin.EditHouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            color: #FFFFFF;
            font-size: large;
            width: 464px;
            text-align: right;
        }
        .auto-style16 {
            width: 464px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style14">
        <tr>
            <td class="auto-style15">ID：</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Name：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">TypeID：</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Description：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Image：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:Button ID="Button6" runat="server" Text="Browser..." />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td>
                <asp:Button ID="Button7" runat="server" Text="Save" />
            </td>
        </tr>
    </table>

</asp:Content>
