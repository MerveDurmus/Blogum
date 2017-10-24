<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Blogum.Admin.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 25px;
            height: 25px;
        }
        .auto-style3 {
            float: left;
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
        <asp:Button ID="btn_mesajArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_mesajArtı_Click"  />&nbsp;
        <asp:Button ID="btn_mesajEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_mesajEksi_Click"  />&nbsp;MESAJ PANELİ
    </div>
    <asp:Panel ID="pnl_mesaj" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
        <asp:DataList ID="dl_mesaj" runat="server" Width="710px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td style="width: 200px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009933" Text='<%# Eval("iletisimAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="width: 200px; " class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("iletisimEmail") %>'></asp:Label>
                        </td>
                        <td style="width: 200px; text-align: right;">
                            <asp:Label ID="Label3" runat="server" Font-Size="10pt" Text='<%# Eval("iletisimTarih","{0: dd MMMM yyyy}") %>' ForeColor="#999999"></asp:Label>
                        </td>
                        <td style="width: 110px">
                            <a href="Mesajlar.aspx?iletisimId=<%#Eval("iletisimId") %>&islem=sil"><img alt="" class="auto-style2" src="../Temalar/delete.png" style="float: right" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("iletisimIcerik") %>' ForeColor="Gray"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style="height: 30px;"></div>


</asp:Content>
