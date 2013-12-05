<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Application.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
                    ：</td>
                <td>
                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    ：</td>
                <td>
                    <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="BtnBack" runat="server" OnClick="BtnBack_Click" Text="Back" />
                </td>
                <td>
                    <asp:Button ID="BtnOk" runat="server" OnClick="BtnOk_Click" Text="Ok" Width="53px" />
                </td>
            </tr>
        </table>
&nbsp;<br />
&nbsp;
    
    </div>
    </form>
</body>
</html>
