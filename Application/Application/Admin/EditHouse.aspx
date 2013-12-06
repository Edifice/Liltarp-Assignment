<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditHouse.aspx.cs" Inherits="Application.Admin.EditHouse" %>
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
                <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">TypeID：</td>
            <td>
                <asp:DropDownList
                    runat="server"
                    DataTextField="Name"
                    DataValueField="ID" 
                    ID="ddHouseType" />
                
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Description：</td>
            <td>
                <textarea id="TextArea" cols="20" name="S1" rows="2"></textarea></td>
        </tr>
        <tr>
            <td class="auto-style15">Image：</td>
            <td>
                <asp:TextBox ID="Textimage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td>
                <asp:Button ID="Btnsave" runat="server" Text="Save" OnClick="Button7_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
