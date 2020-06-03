<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="Defacto_E_Ticaret.SifremiUnuttum" %>

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
                <div class="cizgi2" style="width:315px;  margin-left:320px;">
                   <h2 style="text-align: center; color: #0074c7; font-size: 20px; padding: 5px; margin: 6px;" id="sonuc" runat="server">Şifremi Unuttum</h2>
                      <h3 style="text-align: center; color: red; font-size: 20px; padding: 5px; margin: 6px;" id="H1" runat="server"></h3>
                    <form id="form1" runat="server">
                        <div>
                            <asp:Label class="FormPE" ID="lblmail" runat="server" Text="Label">E-Mail Adresiniz</asp:Label>
                            <br />
                            <asp:TextBox CssClass="textbax" s ID="txtmail" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button CssClass="formbtn" ID="btngiris" runat="server" Text="Gönder" OnClick="btngiris_Click" />
                            <br />
                            <br />
                            <asp:Label  ID="lbmesaj" runat="server" ></asp:Label>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>

</body>
</html>
