<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="Defacto_E_Ticaret.UrunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Acikla1 {
            width: 100%;
            height: 10%;
            margin: 10px;
            margin-top: 40px;
            margin-right: 10px;
        }

            .Acikla1 .ciz1 {
                border: 3px solid #eee;
                border-radius: 7px;
                padding: 15px;
                width: 90%;
                margin-left: 20px;
                background: #fff;
            }

        .Samp2 {
            padding: 10px;
            width: 100px;
            background: #e9d5ad;
            font-size: 15px;
            font-weight: 700;
            letter-spacing: 2px;
            line-height: 15px;
        }

        .ciz1 p {
            padding: 7px;
            font-size: 15px;
            letter-spacing: 1px;
            color: #333;
            line-height: 5px;
        }

        .denemee {
            display: flex;
            flex-direction: inherit;
            margin-bottom: 5px;
            font-size: 15px;
            align-items: center;
        }
        .auto-style3 {
            display: flex;
            width: 90%;
            margin-right: auto;
            margin-top: 0;
            margin-bottom: 0;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <asp:Repeater ID="tekrar" runat="server">
            <ItemTemplate>
                <div class="ResimRow">
                    <div class="Urunlerimg" id="zoom">
                       
                        <asp:Image  ImageUrl='<%# Eval("Fotolar") %>' ID="Image4" runat="server" />

                        <div style="width: 375px; height: 70px;">

                            
                            <asp:Image Height="100%" CssClass="dene" ImageUrl='<%# Eval("Fotolar") %>' ID="Image3" runat="server" />
                            <a tabindex="2">
                                <asp:Image Height="100%" ImageUrl='<%# Eval("fotolar2") %>' ID="Image1" runat="server" />
                               
                            <a tabindex="3">
                                
                                 <asp:Image Height="100%" ImageUrl='<%# Eval("fotolar3") %>' ID="Image2" runat="server" />


                        </div>
                    </div>
                </div>
                <div class="Aciklama">
                    <div class="cizgi">
                        <h2 style="border-bottom: 2px solid #666; padding-bottom: 6px; text-shadow: 0px 2px 2px gray;"><%# Eval("UrunAd") %></h2>
                        <div class="metinler">


                            <div class="deneme">
                                <p class="Samp2">Kullanılan Malzeme:</p>
                                &nbsp;<p class="Samp1"><%# Eval("UrunOzellik") %></p>
                            </div>
                            <div class="deneme">
                                <p class="Samp2">Renk :</p>
                                &nbsp;<p class="Samp1"><%# Eval("UrunRenk") %></p>
                            </div>
                            <div class="deneme">
                                <p class="Samp2">Kesim Biçimi :</p>
                                &nbsp;<p class="Samp1"><%# Eval("UrunOzellik2") %></p>
                            </div>
                            <div class="deneme">
                                <p class="Samp2">Cinsiyet :</p>
                                &nbsp;<p class="Samp1"><%# Eval("UrunCins") %></p>
                            </div>
                            <div class="deneme">
                                <p class="Samp2">Beden</p>
                                &nbsp;<p class="Samp1"><%# Eval("UrunBeden") %></p>
                            </div>
                            <div class="deneme1">
                                <p><%#Eval("UrunFiyat","{0:c}") %> </p>
                            </div>



                            <div class="deneme"><a href="SepeteEkle.aspx?urunid=<%# Eval("Urunid") %>" class="button"><i style="padding-right: 2px" class="fas fa-shopping-bag"></i>Sepet Ekle</a></div>


                        </div>
                    </div>



                </div>


            </ItemTemplate>
        </asp:Repeater>

    </div>
    <div class="auto-style3">
        <div style="width: 100%; background: #67a78b; border-radius: 10px; text-align: center; margin-top: 150px; height: 400px;">
            <h2 style="margin-top: 15px; color: #fff; letter-spacing: 1px; font-weight: 700; text-transform: uppercase">Yorumlar</h2>
            <asp:Repeater ID="rptYorum" runat="server" OnItemCommand="rptYorum_ItemCommand">
                <ItemTemplate>
                    <div class="Acikla1">
                        <div class="ciz1">
                            <div class="denemee">
                                <p class="Samp2">Ad Soyad :</p>
                                &nbsp;<p class="Samp1"><%# Eval("YorumAdSoyad") %></p>
                            </div>
                            <div class="denemee">
                                <p class="Samp2">Yorumu :</p>
                                &nbsp;<p class="Samp1"><%# Eval("Yorumİçerik") %></p>
                            </div>
                            <div class="denemee">
                                <p class="Samp2">Tarih :</p>
                                &nbsp;<p class="Samp1"><%# Eval("YorumTarih") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
</asp:Content>
