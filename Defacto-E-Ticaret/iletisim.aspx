<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı2.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Defacto_E_Ticaret.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #contactSlider {
            height: 250px;
            background: url('/img/iletişim-banner.png') center center no-repeat;
            background-size: cover;
        }

        .sectionArea {
            padding: 80px 0;
        }

        .sectionHeader {
            background: #500d16;
            display: inline-block;
            color: #fff;
            height: 60px;
            line-height: 60px;
            font-size: 40px;
            padding: 5px 40px;
            letter-spacing: 2px;
            margin-bottom: 20px;
        }

        #contactCaption {
            height: 250px;
            background: rgba(0,0,0, .5);
        }

        .caption {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 100%;
            color: #fff;
        }

        .galleryTop {
            text-align: center;
        }

        .gallerySlider {
            overflow: hidden;
            width: 100%;
            margin: 0 auto;
        }

        .galleryslideritem {
            width: 100%;
            margin-top: 10px;
            position: relative;
            left: 0;
            animation: sliderAnimation 30s infinite;
        }

            .galleryslideritem img {
                width: 11%;
                float: left;
                height: 300px;
            }

        @keyframes sliderAnimation {
            0% {
                left: 0;
            }

            10% {
                left: -10%;
            }

            25% {
                left: -25%;
            }

            35% {
                left: -35%;
            }

            45% {
                left: -50%;
            }


            50% {
                left: -100%;
            }

            60% {
                left: -80%;
            }

            70% {
                left: -70%;
            }

            80% {
                left: -60%;
            }

            80% {
                left: -40%;
            }

            100% {
                left: 0;
            }
        }

        .contactTop {
            text-align: center;
        }

        .auto-style3 {
            width: 61%;
        }

        .slider {
            width: 100%;
        }
        .Aciklama6 {
    width: 100%;
    height: 100%;
    margin: 20px;
    margin-top: 43px;
    margin-right: 150px;
}

    .Aciklama6 .cizgi4 {
        border: 3px solid #ccc;
        background:#ccc;
        border-radius: 7px;
        padding: 25px;
        height: 100%;
        width: 80%;
        margin-left: 150px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="slider" id="contactSlider">
        <div class="caption" id="contactCaption">
            <h1>İLETİŞİM</h1>
            <p>bütün rica ve isteklerini bu kanal üzerinde ulaştırabilirsiniz</p>
        </div>
    </section>


    <!--   Galary Section-->
    <section id="gallery" class="sectionArea">
        <div class="galleryTop">
            <h2 class="sectionHeader">GALERİ</h2>
            <p>İÇERİKLERİMİZ</p>
        </div>
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

    <!-- FORM SECTOIN-->
    
    <div class="container">
        <div class="Aciklama6">
            <div class="cizgi4">


                <h2 style="text-align: center; font-size: 25px; color: #182ea7; letter-spacing: 1px; font-weight: bold; text-transform: uppercase;">İLETİŞİM</h2><p style="text-align:center;">İstek ve arzularınız bize ulaştırabilirsiniz</p>
                <hr style="border: 1px solid #1d2a74" />
                <div class="Deneme2">
                    <p class="FormPE">Ad Soyad</p>
                    <p>
                        <asp:TextBox CssClass="textbax" Height="20px" Width="350px" ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage=" Ad ve Soyadını Boş Bırakmayın Boş geçilmez" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="Deneme2">
                    <p class="FormPE">Mail</p>
                    <p class="Fomrpe2">
                        <asp:TextBox CssClass="textbax" ID="txt_mail" Height="20px" Width="350px"  runat="server" TextMode="Email" ></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator2" ControlToValidate="txt_mail" runat="server" ErrorMessage="Mail Kısmı Boş geçilmez" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </p>
                </div>
                
                <div class="Deneme2">
                    <p class="FormPE">Konu</p>
                    <p>
                        <asp:TextBox CssClass="textbax" ID="Txt_konu"  Width="550px"  runat="server" TextMode="MultiLine" Height="50px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Konu Kısmı Boş geçilmez" ControlToValidate="Txt_konu"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="Deneme2">
                    <p class="FormPE">
                        İçerik
                    </p>
                    <p>
                        <asp:TextBox CssClass="textbax" ID="Txt_icerik" runat="server" TextMode="MultiLine" Height="80px" Width="550px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator5" runat="server" ErrorMessage="İçerik kısmı boş geçilemez" ControlToValidate="Txt_icerik"></asp:RequiredFieldValidator>

                    </p>
                </div>
               
                <div>
                    <asp:Button CssClass="formbtn" ID="Button1" runat="server" Text="Üye Ol" />

                    <asp:Label CssClass="FormKayitLabel" ID="Label1" runat="server" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>


            </div>
        </div>
    </div>



</asp:Content>
