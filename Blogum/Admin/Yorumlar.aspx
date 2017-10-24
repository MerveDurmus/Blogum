<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Blogum.Admin.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 690px;
            height: auto;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            width: 416px;
        }

        .auto-style4 {
            width: 25px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
            <asp:Button ID="btn_onaysızYorumArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_onaysızYorumArtı_Click" />&nbsp;
        <asp:Button ID="btn_onaysızYorumEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btn_onaysızYorumEksi_Click" />&nbsp; ONAYSIZ YORUM PANELİ
        </div>
        <asp:Panel ID="pnl_OnaysızYorum" runat="server" ForeColor="#726868" Font-Bold="true">
            <asp:DataList ID="dl_yorum" runat="server">
                <ItemTemplate>
                    <div class="auto-style1" style="margin-bottom: 5px; margin-top: 5px;">
                        <div style="width: 70px; height: 70px; float: left">

                            <asp:Image ID="Image1" runat="server" Height="69px" ImageUrl='<%# Eval("yorumResim") %>' Width="70px" />

                        </div>
                        <div style="width: 590px; height: auto; margin-left: 20px; float: left">
                            <div style="float: left; width: 590px; height: 25px; background-color: #ffb6c1;">
                                <asp:Label ID="Label1" runat="server" Font-Size="18pt" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="#333333"></asp:Label>
                                &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("yorumEmail") %>' ForeColor="#666666"></asp:Label>
                                &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12pt" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="#666666"></asp:Label>
                            </div>
                            <div style="width: 590px; height: 25px; float: left; color: #333333; background-color: #ffd3d9;">
                                Makale:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="#666666"></asp:Label>
                            </div>
                            <div style="width: 590px; height: auto; float: left; background-color: #EFDEE0;">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#666666"></asp:Label>
                            </div>
                            <div style="width: 590px; height: 25px; float: left;">

                                <table class="auto-style2" style="text-align: right">
                                    <tr>
                                        <td class="auto-style3">
                                            <a href="YorumOnayGuncelle.aspx?yorumId=<%#Eval("yorumId") %>&makaleId=<%#Eval("makaleId")%> "><img alt="" class="auto-style4" src="../Temalar/update.png" /></a>
                                        </td>
                                        <td>
                                            <a href="Yorumlar.aspx?yorumId=<%#Eval("yorumId") %>&islem=sil"><img alt="" class="auto-style4" src="../Temalar/delete.png" /></a>
                                        </td>
                                        <td>
                                            <a href="CevapYaz.aspx?makaleId=<%#Eval("makaleId") %>"><img alt="" class="auto-style4" src="../Temalar/cevapyaz.png" /></a>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div style="width: 690px; height: 30px;"></div>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <div style="height: 30px;"></div>
        <div style="height: 30px; line-height: 30px; background-color: lightpink; color: white; font-weight: bolder;">
            <asp:Button ID="btn_onayArtı" runat="server" Height="30px" Width="25px" Text="+" OnClick="btn_onayArtı_Click" />&nbsp;
        <asp:Button ID="btonayEksi" runat="server" Height="30px" Width="25px" Text="-" OnClick="btonayEksi_Click" />&nbsp;ONAYLANAN YORUM PANELİ
        </div>
        <div style="height: 30px;"></div>
        <asp:Panel ID="pnl_onaylıYorum" runat="server" ForeColor="#726868" Font-Bold="true">
            <asp:DataList ID="dl_yorumOnay" runat="server">
                <ItemTemplate>
                    <div class="auto-style1" style="margin-bottom: 5px; margin-top: 5px;">
                        <div style="width: 70px; height: 70px; float: left">

                            <asp:Image ID="Image1" runat="server" Height="69px" ImageUrl='<%# Eval("yorumResim") %>' Width="70px" />

                        </div>
                        <div style="width: 590px; height: auto; margin-left: 20px; float: left">
                            <div style="float: left; width: 590px; height: 25px; background-color: #ffb6c1;">
                                <asp:Label ID="Label1" runat="server" Font-Size="18pt" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="#333333"></asp:Label>
                                &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("yorumEmail") %>' ForeColor="#666666"></asp:Label>
                                &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12pt" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="#666666"></asp:Label>
                            </div>
                            <div style="width: 590px; height: 25px; float: left; color: #333333; background-color: #ffd3d9;">
                                Makale:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="#666666"></asp:Label>
                            </div>
                            <div style="width: 590px; height: auto; float: left; background-color: #EFDEE0;">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#666666"></asp:Label>
                            </div>
                            <div style="width: 590px; height: 25px; float: left;">

                                <table class="auto-style2" style="text-align: right">
                                    <tr>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                           &nbsp;<a href="YorumOnayGuncelle.aspx?yorumId=<%#Eval("yorumId") %>&makaleId=<%#Eval("makaleId")%>"><img alt="" class="auto-style4" src="../Temalar/delete.png" /></td></a>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div style="width: 690px; height: 30px;"></div>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <div style="height: 30px;"></div>


    </div>
</asp:Content>
