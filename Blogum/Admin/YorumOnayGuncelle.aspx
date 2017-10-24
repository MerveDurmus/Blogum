<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="YorumOnayGuncelle.aspx.cs" Inherits="Blogum.Admin.YorumOnayGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 156px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style=" background-color:#FFD5FF; color: #726868; font-weight: bolder;">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Gönderen Kişi: </td>
            <td>
                <asp:TextBox ID="txt_AdSoyad" runat="server" CssClass="textboxgorsel" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum: </td>
            <td>
                <asp:TextBox ID="txt_Yorum" runat="server" CssClass="textboxgorsel" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Onay: </td>
            <td>
                <asp:CheckBox ID="cb_onay" runat="server" Text="Onayla" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="btn_guncelle" runat="server" CssClass="butongorsel" OnClick="btn_guncelle_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>
