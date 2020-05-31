<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="Defacto_E_Ticaret.UrunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Acikla1 {
            width: 100%;
            height: 10%;
            margin: 10px;
            margin-top: 40px;
            margin-right: 10px;
            margin-left: 50px;
        }

            .Acikla1 .ciz1 {
                border: 3px solid #eee;
                border-radius: 7px;
                padding: 15px;
                width: 80%;
                 margin-top:120px;
                margin-left: 200px;
                background: #fff;
                margin-right: 50px;
            }

        .Samp2 {
            padding: 10px;
            width: 150px;
            background: #e9d5ad;
            font-size: 15px;
            font-weight: 700;
            letter-spacing: 2px;
            line-height: 15px;
        }
        .samp3{
            padding: 7px;
            width: 120px;
            color:#fff;
            align-items:center;
            font-size: 15px;
            
            letter-spacing: 2px;
            line-height: 10px;
        }

        p {
            padding: 7px;
            font-size: 15px;
            letter-spacing: 1px;
            color: #333;
            line-height: 15px;
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
            margin-top: 0;
            margin-bottom: 0;
        }

        .Aciklama4 {
            width: 100%;
            height: 100%;
            margin: auto;
            margin-top: 43px;
            margin-left: 30px;
            margin-right: 100px;
        }

            .Aciklama4 .ciz2 {
               border: 3px solid #eee;
                border-radius: 7px;
                padding: 50px;
                width: 94%;
               
                background: #222745;
                color:#fff;
                
                
            }
            .btn{
                padding:10px;
                background:aliceblue;
                color:#333;
                border:none;
                border-radius:5px;
                margin:10px;
                font-weight:bold;
                transition: .5s ease;
            }
            .btn:hover
            {
                background:#b0b3c2;

            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <asp:Repeater ID="tekrar" runat="server" >
            <ItemTemplate>
                <div class="ResimRow">
                    <div class="Urunlerimg" id="zoom">

                        <asp:Image ImageUrl='<%# Eval("Fotolar") %>' ID="Image4" runat="server" />

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
                                <p>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("UrunFiyat","{0:c}") %>'></asp:Label></p>
                            </div>



                            <div class="deneme"><a href="SepeteEkle.aspx?urunid=<%# Eval("Urunid") %>" class="button"><i style="padding-right: 2px" class="fas fa-shopping-bag"></i>Sepet Ekle</a></div>


                        </div>
                    </div>



                </div>


            </ItemTemplate>
        </asp:Repeater>

    </div>
    <div class="auto-style3">
        <div style="width: 100%; background: #67a78b; border-radius: 10px; text-align: center; margin-top: 150px; height: auto; margin-left: 100px;">
            <h2 style="margin-top: 35px; color: #fff; font-size:30px; letter-spacing: 1px; font-weight: 700; text-transform: uppercase">Yorumlar</h2>
            <asp:Repeater ID="rptYorum" runat="server" >
                <ItemTemplate>
                    <div style="width: 100%; height: 10%;    margin-top: 40px; margin-right: 10px; margin-left: 50px;">
                        <div style="border: 3px solid #eee; margin-top:110px; border-radius: 7px; padding: 15px; width: 84%; margin-left: 0px; background: #fff; margin-right: 50px;">
                            <div class="denemee">
                                <p class="Samp2" >Ad Soyad :</p>
                                &nbsp;<p class="Samp1" ><%# Eval("YorumAdSoyad") %></p>
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
    <div class="container">
        <div class="Aciklama4">
            <div class="ciz2">
                <table>
                    <tr >
                        <td ><p class="samp3" >Ad Soyad</p>
                        </td>
                        <td>
                            <asp:TextBox Width="350px" Height="20px" CssClass="textbax" ID="txt_adEkle" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Yorum Ad boş geçilmez" ControlToValidate="txt_adEkle" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><p class="samp3" >Mail</p>
                        </td>
                        <td>
                            <asp:TextBox Width="350px" Height="20px"  CssClass="textbax" ID="txt_mailEKle" runat="server" AutoCompleteType="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Yorum Mail boş geçilmez" ControlToValidate="txt_mailEKle" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><p class="samp3" >Yorum İçerik</p>
                        </td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txt_icerik" runat="server" Height="80px" Width="500px" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Yorum kısmını boş geçmeyiniz" ControlToValidate="txt_icerik" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" ForeColor="Green" Font-Size="Large" Font-Bold="false" runat="server" Text="Label" Visible="false"></asp:Label>
                        </td>
                        <td>
                            <asp:Button CssClass="btn"  ID="Button1" runat="server" Text="Yorum Yap" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
