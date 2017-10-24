<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="Blogum.Admin.DuyuruGuncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Duyuru Başlık:</td>
            <td>
                <asp:TextBox ID="txt_duyuruBaslik" runat="server" CssClass="textboxgorsel" Width="459px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">İçerik: </td>
            <td><CKEditor:CKEditorControl ID="txt_duyuruIcerik" BasePath="ckeditor/" runat="server" Width="459px"></CKEditor:CKEditorControl></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnduyuruGuncelle" runat="server" CssClass="butongorsel" OnClick="btnduyuruGuncelle_Click" Text="GÜNCELLE" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
