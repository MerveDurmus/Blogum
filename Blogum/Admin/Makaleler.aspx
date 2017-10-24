<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Makaleler.aspx.cs" Inherits="Blogum.Admin.Makaleler" %>

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
            width: 96px;
            text-align: center;
        }

        .auto-style6 {
            width: 469px;
        }

       

      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
            <asp:Button ID="btn_makaleEkleArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_makaleEkleArtı_Click" />&nbsp;
        <asp:Button ID="btn_makaleEkleEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_makaleEkleEksi_Click" />&nbsp;MAKALE EKLEME PANELİ
        </div>
        <asp:Panel ID="pnl_MakaleEkle" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori: </td>
                    <td>
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="dropdownlistGörsel">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Başlık: </td>
                    <td>
                        <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="textboxgorsel" Width="450px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Özet: </td>
                    <td>
                        <asp:TextBox ID="txt_makaleOzet" runat="server" CssClass="textboxgorsel" Height="100px" TextMode="MultiLine" Width="450px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">İçerik: </td>
                    <td>
                        <CKEditor:CKEditorControl ID="txt_makaleIcerik" Width="450px" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Slider:</td>
                    <td>
                        <asp:FileUpload ID="fu_slider" runat="server" CssClass="textboxgorsel" Width="450px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_makaleEkle" runat="server" CssClass="butongorsel" Text="EKLE" OnClick="btn_makaleEkle_Click" />
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
            <asp:Button ID="btn_makaleGuncelleArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_makaleGuncelleArtı_Click" />&nbsp;
        <asp:Button ID="btn_MakaleGuncelleEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_MakaleGuncelleEksi_Click" />&nbsp;MAKALE GÜNCELLEME PANELİ
        </div>
        <asp:Panel ID="pnl_makaleGuncelle" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
            <asp:DataList ID="dl_makale" runat="server" Width="699px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">MAKALE BAŞLIK</td>
                            <td class="auto-style2">GÜNCELLE</td>
                            <td class="auto-style2">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style6">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style2">
                                <a href="MakaleGuncelle.aspx?makaleId=<%# Eval("makaleId") %>">
                                    <img alt="" class="auto-style3" src="../Temalar/update.png" /></a>
                            </td>
                            <td class="auto-style4">
                                <a href="Makaleler.aspx?makaleId=<%#Eval("makaleId") %>&islem=sil">
                                    <img alt="" class="auto-style3" src="../Temalar/delete.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

        </asp:Panel>
        <div style="height: 30px;"></div>
        <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
            <asp:Button ID="btn_makaleDosyaArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_makaleDosyaArtı_Click" />&nbsp;
        <asp:Button ID="btnmakaleDosyaEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btnmakaleDosyaEksi_Click" />&nbsp;MAKALE DOSYA EKLEME PANELİ
        </div>
        <asp:Panel ID="pnl_makaleDosya" runat="server" BackColor="#FFD5FF" ForeColor="#726868" Font-Bold="true">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Dosya Seç: </td>
                    <td>
                        <asp:FileUpload ID="fu_makaleDosya" runat="server" CssClass="textboxgorsel" Width="387px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="butongorsel" Text="EKLE" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">NOT: </td>
                    <td>Ekleme işlemi /Dosyalar/eklenendosya.uzantısı şeklinde kullanılacak.</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px;"></div>
    </div>
</asp:Content>
