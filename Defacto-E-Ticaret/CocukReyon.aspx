﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="CocukReyon.aspx.cs" Inherits="Defacto_E_Ticaret.CocukReyon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container2">
        <asp:Repeater ID="tekrarlayici" runat="server" >
            <ItemTemplate>
               
                <div class="col">
                    <div class="Urunlerimg">
                        <a href="UrunDetay.aspx?urunid=<%#Eval("Urunid") %>"> <asp:Image  ImageUrl='<%# Eval("Fotolar") %>' ID="Image1" runat="server" /></a></a>

                    </div>
                    <div class="Urunbaslik">
                        <h3  style="font-size: 17px; color: #3a3a3a; font-weight: 700; text-align: center;"><%# Eval("UrunAd")%></h3>
                    </div>
                    <div class="UrunFiyat">
                        <h3 style=" text-align: center; font-size: 15px; font-weight:700; color:#f55214;"><%# Eval("UrunFiyat","{0:c}")%></h3>
                    </div>
                    <div style="text-align: center;">
                        <a style="padding: 10px; background: #f55214; color: #fff; border-radius: 3px; border: 1px solid #ed9d1e; text-decoration: none; font-size: 15px; letter-spacing: 1px;" href="#"><i style="padding-right: 2px" class="fas fa-shopping-bag"></i>Sepet</a>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
