<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blogum.Admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * {
            margin:0;
            padding:0;
            border:0;

        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 40px;
            width: 261px;
        }
        .auto-style4 {
            height: 40px;
            width: 265px;
        }
    </style>
</head>
<body style="background-color:#fff0f5">
    <form id="form1" runat="server">
    <div style="height:65px; background-color:#cdc1c5;  color:white;">
        
        <table class="auto-style2">
            <tr>
                <td style="line-height: 40px;" class="auto-style3">Kullanıcı Adı:&nbsp;&nbsp;
                    <asp:TextBox ID="txt_kullanici" runat="server" Height="16px" Width="149px"></asp:TextBox>
                </td>
                <td style="line-height: 40px;" class="auto-style4">&nbsp; Parola:&nbsp;
                    <asp:TextBox ID="txt_sifre" runat="server" Height="16px" Width="149px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="height: 40px; line-height: 40px;">&nbsp;<asp:Button ID="btn_girisYap" runat="server" Height="31px" Text="Giriş Yap" Width="108px" OnClick="btn_girisYap_Click" />
                </td>
                <td style="height: 40px; line-height: 40px; text-align:center;">
                    <asp:Label ID="lbl_bilgi" runat="server" Text="YÖNETİCİ PANELİ"></asp:Label>
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>


<%--<div style="float:left; width:250px; margin-top:20px;">Kullanıcı Adı: <asp:TextBox ID="txt_kullanici" runat="server" Height="25px"></asp:TextBox>
        </div>
        <div style="float:left; width:210px; margin-top:20px;">Parola: <asp:TextBox ID="txt_sifre" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
        </div>
        <div style="margin-top:20px;" class="auto-style1"><asp:Button ID="btn_giris" runat="server" Text="Giriş" Height="25px" Width="80px" OnClick="btn_giris_Click" /></div>
    <div style="float:right;width:300px; text-align:center; margin-top:10px;"><asp:Label ID="lbl_bilgi" runat="server" Text="Yönetici Paneli" ForeColor="White"></asp:Label></div>--%>