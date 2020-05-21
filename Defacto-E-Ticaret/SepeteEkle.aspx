<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="SepeteEkle.aspx.cs" Inherits="Defacto_E_Ticaret.SepeteEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 252px;
        }

        .auto-style4 {
        width: 143px;
    }

        .auto-style5 {
            width: 323px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="Aciklama3">
            <div class="cizgi3">
                <div>
                    <p style="text-align: center">
                        <img src="img/logo-ok-png-2.png" style="width: 200px; height: 200px;" runat="server" id="resim" /><img src="img/unnamed.png" style="width: 150px; text-align: center; height: 150px;" runat="server" id="resim1" />&nbsp;
                       
                    </p>
                    <h3 style="text-align: center; color: red; font-size: 20px; padding: 5px; margin: 6px;" id="sonuc" runat="server"></h3>
                    <h4 style="text-align: center; font-size: 17px; padding: 5px; margin: 6px;" id="sonuc2" runat="server"></h4>
                    <h3 style="font-size: 15px; text-align: center; padding: 5px; margin: 6px; color: green;" id="sonuc3" runat="server"></h3>
                    <table style="border:1px medium #333;" >
                        <tr>
                            <th class="auto-style4">Ürün Resim</th>


                            <th class="auto-style5">Ürün İsim</th>


                            <th class="auto-style3">Ürün Fiyat</th>
                             
                           
                        </tr>
                         <hr style="border:2px solid #333; " />
                        
                         
                        <asp:Repeater ID="tekrar" runat="server">
                            <ItemTemplate>
                              
                                <tr>
                                    <th>
                                        <img src="img/erkek/<%# Eval("Fotolar") %>" style="width: 150px" />
                                    </th>
                                    
                                    <th style="font-size:18px; font-weight:bold;text-align:center; margin:0 auto; " ><%# Eval("UrunAd")%></th>
                                    <th style="font-size:18px; font-weight:bold;text-align:center; "><%# Eval("UrunFiyat","{0:c}")%></th>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </table>
                </div>
               
            </div>

        </div>



    </div>
     
</asp:Content>
