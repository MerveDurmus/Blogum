<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Blogum.Admin.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 226px;
        }

        .auto-style3 {
            width: 226px;
            height: 26px;
        }

        .auto-style4 {
            height: 26px;
        }

        .auto-style5 {
            width: 25px;
            height: 25px;
        }

        .auto-style6 {
            width: 195px;
        }

        .auto-style7 {
            width: 153px;
        }

        .auto-style8 {
            width: 400px;
        }

        .auto-style9 {
            width: 407px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
            <asp:Button ID="btn_kategoriEkleArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_kategoriEkleArtı_Click" />&nbsp;
        <asp:Button ID="btn_kategoriEkleEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_kategoriEkleEksi_Click" />&nbsp;KATEGORİ EKLEME PANELİ
        </div>
        <asp:Panel ID="pnl_KategoriEkle" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori Adı: </td>
                    <td>
                        <asp:TextBox ID="txt_KategoriAdi" runat="server" CssClass="textboxgorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Sıra: </td>
                    <td>
                        <asp:TextBox ID="txt_Sira" runat="server" CssClass="textboxgorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Resim: </td>
                    <td>
                        <asp:FileUpload ID="fu_kategoriResim" runat="server" CssClass="textboxgorsel" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right"></td>
                    <td class="auto-style4">
                        <asp:Button ID="btn_kategoriKaydet" runat="server" CssClass="butongorsel" Text="Ekle" OnClick="btn_kategoriKaydet_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px;"></div>
        <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
            <asp:Button ID="btn_kdArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_kdArtı_Click" />&nbsp;
        <asp:Button ID="btn_kdEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_kdEksi_Click" />&nbsp;KATEGORİ DÜZENLEME PANELİ
        </div>
        <asp:Panel ID="pnl_KategoriDuzenle" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
            <div>
                <asp:DataList ID="dl_kategoriDuzenle" runat="server" Width="700px">
                    <HeaderTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style8">KATEGORİ ADI</td>
                                <td class="auto-style6">DÜZENLE</td>
                                <td class="auto-style7">SİL</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style9">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                                </td>
                                <td>
                                    <a href="KategoriGuncelle.aspx?kategoriId=<%#Eval("kategoriId") %>">
                                        <img alt="" class="auto-style5" src="../Temalar/update.png" /></a>
                                </td>
                                <td>
                                    <a href="Kategoriler.aspx?kategoriId=<%#Eval("kategoriId" )%>&islem=sil">
                                        <img alt="" class="auto-style5" src="../Temalar/delete.png" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>

        </asp:Panel>
        <div style="height: 30px;"></div>
    </div>
</asp:Content>
