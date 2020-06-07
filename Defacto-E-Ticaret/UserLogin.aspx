<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Defacto_E_Ticaret.UserLogin" %>

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
                            <p class="FormPE">Mail</p>
                            <p>
                                <asp:TextBox CssClass="textbax" ID="txt_mail" runat="server"></asp:TextBox>

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
                               <asp:Label ForeColor="Red" Font-Size="15px" Visible="false" ID="Label1" runat="server" Text="Label"></asp:Label><asp:CheckBox ID="CheckBox1" runat="server" Text="Beni Unutma" style="text-align:right; " OnCheckedChanged="CheckBox1_CheckedChanged" />
                               <p><a href="SifremiUnuttum.aspx" style="text-align:right; margin-left:170px; color:#829fff;">Şifremi Unuttum</a></p>
                               <br />
                               <p>Üye Değil iseniz <a href="UyeOl.aspx" style="text-align:right; margin-left:10px; color:#829fff;">Üye Ol</a></p>

                           </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
