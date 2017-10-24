<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="MakaleGuncelle.aspx.cs" Inherits="Blogum.Admin.MakaleGuncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 178px;
        }
        .auto-style3 {
            border: 1px dotted #726868;
        }
        .auto-style4 {
            text-align: justify;
        }
        .auto-style5 {
            background-color: #a09494;
            height: 25px;
            width: 100px;
            color: white;
            margin-left: 173px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF">&nbsp;</td>
            <td style="background-color: #FFD5FF">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF" >Başlık: </td>
            <td style="background-color: #FFD5FF">
                <asp:TextBox ID="txt_baslik" runat="server" CssClass="textboxgorsel" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF" >Özet: </td>
            <td style="background-color: #FFD5FF">
                <asp:TextBox ID="txt_ozet" runat="server" CssClass="textboxgorsel" TextMode="MultiLine" Height="100px" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF" >İçerik: </td>
            <td style="background-color: #FFD5FF">
                <CKEditor:CKEditorControl ID="txt_makaleIcerik" BasePath="/ckeditor/" runat="server" Width="470px"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF" >Slider: </td>
            <td style="background-color: #FFD5FF">
                <asp:FileUpload ID="fu_slider" runat="server" CssClass="textboxgorsel" Width="470px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF" >Yorum Sayısı: </td>
            <td style="background-color: #FFD5FF">
                <asp:TextBox ID="txt_yorumSayisi" runat="server" CssClass="textboxgorsel" Width="470px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF" >&nbsp;</td>
            <td style="background-color: #FFD5FF" class="auto-style4">
                <asp:Button ID="btn_guncelle" runat="server" CssClass="butongorsel" Text="GÜNCELLE" OnClick="btn_guncelle_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF" >&nbsp;</td>
            <td style="background-color: #FFD5FF" class="auto-style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
