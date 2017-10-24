<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="Blogum.Admin.KategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 232px;
        }
        .auto-style3 {
            width: 232px;
            height: 19px;
        }
        .auto-style4 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="text-align: right">
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF">&nbsp;</td>
            <td style="background-color: #FFD5FF; text-align: left;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF">Kategori Adı:</td>
            <td style="background-color: #FFD5FF; text-align: left;">
                <asp:TextBox ID="txt_KategoriAdi" runat="server" CssClass="textboxgorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF">Sıra:</td>
            <td style="background-color: #FFD5FF; text-align: left;">
                <asp:TextBox ID="txt_KategoriSira" runat="server" CssClass="textboxgorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF">Adet:</td>
            <td style="background-color: #FFD5FF; text-align: left;">
                <asp:TextBox ID="txt_KategoriAdet" runat="server" CssClass="textboxgorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="background-color: #FFD5FF">Resim</td>
            <td class="auto-style4" style="background-color: #FFD5FF; text-align: left;">
                <asp:FileUpload ID="fu_KategoriResim" runat="server" Height="25px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFD5FF">&nbsp;</td>
            <td style="background-color: #FFD5FF; text-align: left;">
                <asp:Button ID="Button1" runat="server"  Text="GÜNCELLE" CssClass="butongorsel" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
