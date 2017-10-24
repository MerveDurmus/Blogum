<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="CevapYaz.aspx.cs" Inherits="Blogum.Admin.CevapYaz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 213px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FFD5FF; color: #726868; font-weight: bolder;">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Admin: </td>
            <td>
                <asp:TextBox ID="txt_yorumAdSoyad" runat="server" CssClass="textboxgorsel" Width="208px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum: </td>
            <td>
                <asp:TextBox ID="txt_yorumIcerik" runat="server" CssClass="textboxgorsel" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="butongorsel" OnClick="Button1_Click" Text="Cevap Yaz" />
            </td>
        </tr>
    </table>
</asp:Content>
