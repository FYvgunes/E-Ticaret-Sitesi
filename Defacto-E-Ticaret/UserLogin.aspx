﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Defacto_E_Ticaret.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/reset.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <title></title>
</head>
<body>

    <div class="container">
        <section>
            <div class="Aciklama2">
                <div class="cizgi2">
                    <form id="form1" runat="server">
                        <h2 style="text-align: center; font-size: 25px; color: #182ea7; letter-spacing: 1px; font-weight: bold; text-transform: uppercase;">Giriş Yap</h2>
                        <hr style="border: 1px solid #1d2a74" />
                        <div class="Deneme2">
                            <p class="FormPE">Kullanıcı Adı</p>
                            <p>
                                <asp:TextBox CssClass="textbax" ID="txt_kullaniciAd" runat="server"></asp:TextBox>

                            </p>
                        </div>
                        <div class="Deneme2">
                            <p class="FormPE">Şifre</p>
                            <p>
                                <asp:TextBox CssClass="textbax" ID="Txt_Sifre" runat="server"></asp:TextBox>

                            </p>
                        </div>
                        <div class="deneme3">
                           <div style="text-align:center;">
                               <asp:Button CssClass="formbtn" ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                               <asp:Label ForeColor="Red" Font-Size="15px" Visible="false" ID="Label1" runat="server" Text="Label"></asp:Label>
                           </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
</body>
</html>