<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blogum.Default" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="dl_makale" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width:690px; margin:0 auto; height:auto;">
                    <div style="width: 710px; height: 40px; float: left">
                        <div style="width: 50px; height: 40px; float: left">
                            <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl='<%# Eval("kategoriResim") %>' Width="50px" />
                        </div>
                        <div style="width: 660px; height: 40px; float: left; background-color: #E8E8E8; line-height: 40px;">
                            <a class="a" href="MakaleDetay.aspx?makaleId=<%#Eval("makaleId") %>"><asp:Label ID="Label1" runat="server" Font-Size="18pt" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label></a>
                        </div>
                    </div>
                    <div style="float:left; height:auto; width:710px; background-color: #f5f5f0; padding-bottom: 10px;">
                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleOzet") %>' ForeColor="#4D4D4D"></asp:Label>
                    </div>
                    <div style="width:710px; float:left; height:20px; line-height:20px; font-size:12px; background-color: #E8E8E8;">
                        <div style="margin-right:15px; " class="auto-style5">
                            &nbsp;<img alt="" class="auto-style4" src="Temalar/saat.png" style="height: 17px" /><asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="margin-right:15px; " class="auto-style5">
                            <img alt="" class="auto-style4" src="Temalar/goz.png" style="height: 17px" />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOkunma") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="width:auto; height:20px; float:left; margin-right:15px; ">
                            <img alt="" class="auto-style4" src="Temalar/yorum.png" style="height: 17px" />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleYorumSayi") %>' ForeColor="#666666"></asp:Label>
                        </div>
                    </div>
                    
                    <div style="width:100%; height:40px; float:left;"></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
