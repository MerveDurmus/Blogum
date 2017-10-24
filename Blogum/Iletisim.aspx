<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Blogum.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 45px;
        }
        .auto-style3 {
            width: 24px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%; height:auto; float:left;">
        <table class="auto-style1" style="color: #726868">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;
                    <img alt="" class="auto-style3" src="Temalar/facebook.png" /></td>
                <td>&nbsp;&nbsp;facebook.com/facebookadres</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;
                    <img alt="" class="auto-style3" src="Temalar/youtube.png" /></td>
                <td>https://www.youtube.com/channel/UCO665W7U1hx875TjWuzJtnw?view_as=subscriber</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;
                    <img alt="" class="auto-style3" src="Temalar/twitter.png" /></td>
                <td>twitter.com/twitteradres</td>
            </tr>
        </table>
    </div>
    <div style="height:40px; width:100%; float:left; color: #726868; font-weight: bolder; line-height: 40px;">&nbsp;&nbsp;Bana buradan mesajınızı gönderebilirsiniz..</div>
    <div style="height: 200px; width: 100%;">
        <div style="width: 310px; height: 200px; float: left; border: 1px dotted #ffb6c1; margin-left: 7px; margin-bottom: 7px;">
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Mesajınızı yazınız.." runat="server" Height="200px" TextMode="MultiLine" Width="310px"></asp:TextBox>
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
