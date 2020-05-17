<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="Defacto_E_Ticaret.UrunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Repeater id="tekrar" runat="server">
            <itemtemplate>
            <div class="ResimRow">
                 <div class="Urunlerimg">
                        <img src="img/erkek/<%# Eval("Fotolar") %>" alt="Alternate Text" />
                    </div>
            </div>
            <div class="Aciklama">
                <div class="cizgi">
                    <h2 style="border-bottom:2px solid #666; padding-bottom:6px; text-shadow:0px 2px 2px gray;"><%# Eval("UrunAd") %></h2>
                      <div class="metinler">
                   
                  
                   <div class="deneme"><span class="Samp2">Kullanılan Malzeme:</span> &nbsp;<span class="Samp1"><%# Eval("UrunOzellik") %></span></div>
                   <div class="deneme"><span class="Samp2">Renk :</span> &nbsp;<span class="Samp1"><%# Eval("UrunRenk") %></span></div>
                   <div class="deneme"><span class="Samp2">Kesim Biçimi :</span> &nbsp;<span class="Samp1"><%# Eval("UrunOzellik2") %></span></div>
                   <div class="deneme"><span class="Samp2">Cinsiyet :</span> &nbsp;<span class="Samp1"><%# Eval("UrunCins") %></span></div>
                   <div class="deneme"><span class="Samp2">Beden</span> &nbsp;<span class="Samp1"><%# Eval("UrunBeden") %></span></div>
                   <div class="deneme1"><p><%#Eval("UrunFiyat","{0:c}") %> </p></div>
                         
                          
                         
                   <div class="deneme"><p><a href="#" ><i style="padding-right: 2px" class="fas fa-shopping-bag"></i>Sepet Ekle</a></p></div>
                   

                </div>
                </div>
                
              

            </div>
        </itemtemplate>
        </asp:Repeater>
    </div>
</asp:Content>
