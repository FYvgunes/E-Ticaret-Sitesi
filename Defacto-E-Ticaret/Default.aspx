<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Defacto_E_Ticaret.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
                <div class="col2" style="margin-left: 250px; margin-top:10px;">
                    <div style="float: right;">
                    <asp:TextBox CssClass="text" ID="txt_Ara" runat="server"></asp:TextBox>  <asp:Button CssClass="btn" ID="btn_Ara" runat="server" Text="Ara" OnClick="btn_Ara_Click"  />
                    </div>
                </div>

            </div>
    <div class="container2">
        <asp:Repeater ID="tekrarlayici" runat="server"  >
            <ItemTemplate>
               
                <div class="col">
                    <div class="Urunlerimg">
                        <a href="UrunDetay.aspx?urunid=<%#Eval("Urunid") %>">
                            <asp:Image  ImageUrl='<%# Eval("Fotolar") %>' ID="Image1" runat="server" /></a>

                    </div>
                    <div class="Urunbaslik">
                        <h3  style="font-size: 17px; color: #3a3a3a; font-weight: 700; text-align: center;"><%# Eval("UrunAd")%></h3>
                    </div>
                    <div class="UrunFiyat">
                        <h3 style=" text-align: center; font-size: 15px; font-weight:700; color:#f55214;">
                            <asp:Label ID="Label3" runat="server" Text=""><%# Eval("UrunFiyat","{0:c}")%></asp:Label></h3>
                    </div>
                    <div style="text-align: center;">
                        <a href="UrunDetay.aspx?urunid=<%#Eval("Urunid") %>" style="padding: 10px; background: #f55214; color: #fff; border-radius: 3px; border: 1px solid #ed9d1e; text-decoration: none; font-size: 15px; letter-spacing: 1px;" ><i style="padding-right: 2px" class="fas fa-tag"></i>Ürün Detay</a>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>
     <!--   Galary Section-->
    <section id="gallery" class="sectionArea">
        <h2 style="text-align: center; font-size: 25px; color: #182ea7; letter-spacing: 1px; font-weight: bold; text-transform: uppercase;">ÇOK SATANLAR</h2><p style="text-align:center;"></p>
                <hr style="border: 1px solid #1d2a74" />
        <div class="galleryBody">
            <div class="container">
                <div class="gallerySlider">
                    <div class="galleryslideritem">
                        
                        <img src="img/erkek1.png" alt="">
                        <img src="img/erkek2.png" alt="">
                        <img src="img/erkek3.png" alt="">
                        <img src="img/erkek4.png" alt="">
                        <img src="img/erkek5.png" alt="">
                        <img src="img/erkek6.png" alt="">
                        <img src="img/erkek7.png" alt="">
                        <img src="img/erkek8.png" alt="">
                        <img src="img/erkek8.png" alt="">
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
