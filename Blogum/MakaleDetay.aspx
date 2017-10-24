<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="MakaleDetay.aspx.cs" Inherits="Blogum.MakaleDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 17px;
            height: 17px;
        }

        .auto-style5 {
            width: auto;
            height: 20px;
            float: left;
        }

        .auto-style6 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="dl_makale" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width: 690px; margin: 0 auto; height: auto;">
                    <div style="width: 710px; height: 40px; float: left">
                        <div style="width: 50px; height: 40px; float: left">
                            <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl='<%# Eval("kategoriResim") %>' Width="50px" />
                        </div>
                        <div style="width: 660px; height: 40px; float: left; background-color: #E8E8E8; line-height: 40px;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18pt" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label>
                        </div>
                    </div>
                    <div style="float: left; height: auto; width: 710px; background-color: #fff; padding-bottom: 10px;">
                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleIcerik") %>' ForeColor="#4D4D4D"></asp:Label>
                    </div>
                    <div style="width: 710px; float: left; height: 20px; line-height: 20px; font-size: 12px; background-color: #E8E8E8;">
                        <div style="margin-right: 15px;" class="auto-style5">
                            &nbsp;<img alt="" class="auto-style4" src="Temalar/saat.png" style="height: 17px" /><asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="margin-right: 15px;" class="auto-style5">
                            <img alt="" class="auto-style4" src="Temalar/goz.png" style="height: 17px" />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOkunma") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="width: auto; height: 20px; float: left; margin-right: 15px;">
                            <img alt="" class="auto-style4" src="Temalar/yorum.png" style="height: 17px" />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleYorumSayi") %>' ForeColor="#666666"></asp:Label>
                        </div>
                    </div>

                    <div style="width: 100%; height: 40px; float: left;"></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="height: 30px; width=100%;"></div>
    <div style="background-color: lightpink; color: white; height: 30px; width: 100%; text-align: center; font-size: 24px; font-weight: bolder;">Makaleye Yapılan Yorumlar</div>
    <div style="height: 7px; width: 100%;"></div>

    <div style="width: 690px; height: auto; margin: 0 auto;">
        <asp:DataList ID="dl_yorumGoster" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width: 690px; height: auto; float: left; ">
                    <div style="float: left; width: 61px; height: 61px; border: 1px dotted #ffc1b6">
                        <asp:Image ID="Image3" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />

                    </div>
                    <div style="float: left; height: auto; margin-left: 5px; width: 614px">
                        <div style="float: left; height: 25px; width: 614px;">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorumAdSoyad") %>' Font-Size="15pt" ForeColor="#333333"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label7" runat="server" Font-Size="12pt" ForeColor="#726868" Text='<%# Eval("yorumTarih","{0: dd MMMM yyyy}") %>'></asp:Label>
                        </div>
                        <div style="float: left; width: 614px; height: auto;">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="Gray"></asp:Label>
                        </div>
                    </div>

                </div>
                <div style="width: 690px; height: 20px; float: left">
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="height: 30px; width=100%;"></div>
    <div style="background-color: lightpink; color: white; height: 30px; width: 100%; text-align: center; font-size: 24px; font-weight: bolder;">Yorum Yap</div>
    <div style="height: 7px; width: 100%;"></div>
    <div style="height: 200px; width: 100%;">
        <div style="width: 310px; height: 200px; float: left; border: 1px dotted #ffb6c1; margin-left: 7px; margin-bottom: 7px;">
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Herkese açık bir yorum ekleyiniz.." runat="server" Height="200px" TextMode="MultiLine" Width="310px"></asp:TextBox>
        </div>
        <div style="float: right; width: 373px; height: 200px; border: 1px dotted #ffb6c1; margin-right: 7px; margin-bottom: 7px;">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_adSoyad" runat="server" CssClass="textboxgorsel" placeHolder="Adınız Soyadınız.." Width="300px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_email" runat="server" CssClass="textboxgorsel" placeHolder="E-mail Adresiniz.." Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btn_yorumEkle" runat="server" CssClass="butongorsel" Text="Gönder" OnClick="btn_yorumEkle_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_yorumIcerik" ErrorMessage="RequiredFieldValidator" ForeColor="Maroon">Yorum yazınız!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_adSoyad" ErrorMessage="RequiredFieldValidator" ForeColor="Maroon">Ad soyad boş geçilemez!!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="RequiredFieldValidator" ForeColor="Maroon">E-Mail adresiniz!!</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="RegularExpressionValidator" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Hatalı mail adresi!!</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
