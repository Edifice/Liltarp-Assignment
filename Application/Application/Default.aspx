<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Application.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <div class="pictureTable">
                <div class="row">
                    <div onclick="location.href='/Houses.aspx?typeId=1'" class="col-xs-6 col-md-4">
                        <div class="i4"></div>
                        <div class="title">Fritidshuse</div>
                    </div>
                    <div onclick="location.href='/Nybyggeri.aspx'" class="col-xs-6 col-md-4">
                        <div class="i2"></div>
                        <div class="title">Nybyggeri</div>
                    </div>
                    <div onclick="location.href='/Ombygninger.aspx'" class="col-xs-6 col-md-4">
                        <div class="i3"></div>
                        <div class="title">Ombygning</div>
                    </div>
                    <div onclick="location.href='/Houses.aspx?typeId=2'" class="col-xs-6 col-md-4">
                        <div class="i5"></div>
                        <div class="title">Type SM-V</div>
                    </div>
                    <div onclick="location.href='/BYGGaranti.aspx'" class="col-xs-6 col-md-4">
                        <div class="i1"></div>
                        <div class="title">Garanti</div>
                    </div>
                    <div onclick="location.href='/Contact.aspx'" class="col-xs-6 col-md-4">
                        <div class="i6"></div>
                        <div class="title">Kontakt</div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
