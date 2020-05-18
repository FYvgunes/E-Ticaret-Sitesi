<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="Defacto_E_Ticaret.UrunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <asp:Repeater id="tekrar" runat="server">
            <itemtemplate>
            <div class="ResimRow">
                 <div class="Urunlerimg" id="zoom">
                        <img id="test" src="img/erkek/<%# Eval("Fotolar") %>" alt="Alternate Text" />
                      
                      <div style=" width:375px;height:70px;">
        
                         <img class="dene" style="height:100%; width:10%;" src="img/erkek/erkek1.png" />
                         <a tabindex="2"><img style="height:100%;" src="img/erkek/erkek2.png" /></a>
                         <a tabindex="3"><img style="height:100%;" src="img/erkek/erkek3.png" /></a>
                         <a tabindex="4"><img style="height:100%;" src="img/erkek/erkek4.png" /></a>
                         
                     </div>
                    </div>
            </div>
            <div class="Aciklama">
                <div class="cizgi">
                    <h2 style="border-bottom:2px solid #666; padding-bottom:6px; text-shadow:0px 2px 2px gray;"><%# Eval("UrunAd") %></h2>
                      <div class="metinler">
                   
                  
                   <div class="deneme"><p class="Samp2">Kullanılan Malzeme:</p> &nbsp;<p class="Samp1"><%# Eval("UrunOzellik") %></p></div>
                   <div class="deneme"><p class="Samp2">Renk :</p> &nbsp;<p class="Samp1"><%# Eval("UrunRenk") %></p></div>
                   <div class="deneme"><p class="Samp2">Kesim Biçimi :</p> &nbsp;<p class="Samp1"><%# Eval("UrunOzellik2") %></p></div>
                   <div class="deneme"><p class="Samp2">Cinsiyet :</p> &nbsp;<p class="Samp1"><%# Eval("UrunCins") %></p></div>
                   <div class="deneme"><p class="Samp2">Beden</p> &nbsp;<p class="Samp1"><%# Eval("UrunBeden") %></p></div>
                   <div class="deneme1"><p><%#Eval("UrunFiyat","{0:c}") %> </p></div>
                         
                          
                         
                   <div class="deneme"><a href="#" class="button" ><i style="padding-right: 2px" class="fas fa-shopping-bag"></i>Sepet Ekle</a></div>
                   

                </div>
                </div>
                
              

            </div>
                  
                    
        </itemtemplate>
        </asp:Repeater>
    </div>
     
    
</asp:Content>
