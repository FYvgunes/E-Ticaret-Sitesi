<%@ Page Title="Defacto - Şikayetler" Language="C#" MasterPageFile="~/Kullanıcı2.Master" AutoEventWireup="true" CodeBehind="Sikayetler.aspx.cs" Inherits="Defacto_E_Ticaret.Sikayetler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        #contactSlider {
            height: 250px;
            background: url('/img/finance.jpg') center center no-repeat;
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
        background:#e5e1e4;
        border-radius: 7px;
        padding: 25px;
        height: 100%;
        width: 80%;
        margin-left: 160px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="slider" id="contactSlider">
        <div class="caption" id="contactCaption">
            <h1>ŞİKAYET</h1>
            <p>Şikayetlerinizi buradan bizlere ulaştırabilirsiniz</p>
        </div>
    </section>


   

    <!-- FORM SECTOIN-->
    
    <div class="container">
        <div class="Aciklama6">
            <div class="cizgi4">


                <h2 style="text-align: center; font-size: 25px; color: #182ea7; letter-spacing: 1px; font-weight: bold; text-transform: uppercase;">ŞİKAYET</h2><p style="text-align:center;">Şikayetlerinizi buradan bize ulaştırabilirsiniz.</p>
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
                        <asp:TextBox CssClass="textbax" ID="Txt_konu"  Width="650px"  runat="server" TextMode="MultiLine" Height="50px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Konu Kısmı Boş geçilmez" ControlToValidate="Txt_konu"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="Deneme2">
                    <p class="FormPE">
                        İçerik
                    </p>
                    <p>
                        <asp:TextBox CssClass="textbax" ID="Txt_icerik" runat="server" TextMode="MultiLine" Height="80px" Width="650px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator5" runat="server" ErrorMessage="İçerik kısmı boş geçilemez" ControlToValidate="Txt_icerik"></asp:RequiredFieldValidator>

                    </p>
                </div>
               
                <div>
                    <asp:Button CssClass="formbtn" ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click"  />

                    <asp:Label CssClass="label" ID="Label1" runat="server" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
