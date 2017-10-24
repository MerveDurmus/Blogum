<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="Blogum.Admin.Duyurular" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 25px;
            height: 25px;
        }
        .auto-style4 {
            text-align: left;
            width: 199px;
        }
        .auto-style5 {
            width: 100px;
        }
        .auto-style6 {
            width: 289px;
        }
        .auto-style7 {
            text-align: justify;
            width: 198px;
        }
        .auto-style8 {
            text-align: justify;
            width: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
        <asp:Button ID="btn_duyuruEkleArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_duyuruEkleArtı_Click"  />&nbsp;
        <asp:Button ID="btn_duyuruEkleEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_duyuruEkleEksi_Click" />&nbsp;DUYURU EKLEME PANELİ
    </div>
    <asp:Panel ID="pnl_duyuruEkle" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Başlık: </td>
                <td>
                    <asp:TextBox ID="txt_duyuruBaslik" runat="server" Width="450px" CssClass="textboxgorsel"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">İçerik: </td>
                <td><CKEditor:CKEditorControl ID="txt_duyuruIcerik" Width="450px" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_duyuruEkle" runat="server" Text="EKLE" CssClass="butongorsel" OnClick="btn_duyuruEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <div style="height: 30px;"></div>
    <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
        <asp:Button ID="btn_dDuzenleArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_dDuzenleArtı_Click"  />&nbsp;
        <asp:Button ID="btn_dDuzenleEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_dDuzenleEksi_Click"  />&nbsp;DUYURU DÜZENLEME PANELİ
    </div>
    <asp:Panel ID="pnl_dDuzenle" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
        <asp:DataList ID="dl_duyuruDuzenle" runat="server" Width="706px">
            <HeaderTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">DUYURU BAŞLIK</td>
                        <td class="auto-style4">DÜZENLE</td>
                        <td class="auto-style5">SİL</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyuruBaslik") %>'></asp:Literal>
                        </td>
                        <td class="auto-style7">
                            <a href="DuyuruGuncelle.aspx?duyuruId=<%#Eval("duyuruId") %>"><img alt="" class="auto-style3" src="../Temalar/update.png" /></a>
                        </td>
                        <td class="auto-style8">
                            <a href="Duyurular.aspx?duyuruId=<%#Eval("duyuruId") %>&islem=sil"><img alt="" class="auto-style3" src="../Temalar/delete.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        
    </asp:Panel>
</asp:Content>
