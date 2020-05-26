<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Defacto_E_Ticaret.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/reset.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container">
        <section>
            <div class="Aciklama2">
                <div class="cizgi2">
                    <form id="form1" runat="server">
                        <div style="background:#1d2a74; padding:0;">
                        <h2 style="text-align: center; font-size: 25px; color: #f3f3f3; letter-spacing: 1px; font-weight: bold; text-transform: uppercase;padding:20px 25px; margin:10px 40px; ">Admin Giriş</h2>
                           
                            </div>
                        
                        <div class="Deneme2">
                            <p class="FormPE">Admin Adı</p>
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
                               <asp:Label ForeColor="Red" Font-Size="15px" Visible="false" ID="Label1" runat="server" Text="Label" ></asp:Label>
                           </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
