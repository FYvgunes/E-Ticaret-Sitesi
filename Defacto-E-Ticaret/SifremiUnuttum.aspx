<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı2.Master" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="Defacto_E_Ticaret.SifremiUnuttum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <section>
            <div class="Aciklama2">
                <div class="cizgi2">
                    <form id="form1" runat="server">
                        <h2 style="text-align: center; font-size: 25px; color: #182ea7; letter-spacing: 1px; font-weight: bold; text-transform: uppercase;">Şifremi Unuttum</h2>
                        <hr style="border: 1px solid #1d2a74" />
                        <div class="Deneme2">
                            <p class="FormPE">Mail Adresiniz</p>
                            <p>
                                <asp:TextBox CssClass="textbax" ID="txt_kullaniciAd" runat="server"></asp:TextBox>

                            </p>
                        </div>
                       <div class="deneme3">
                           <div style="text-align:center;">
                               <asp:Button CssClass="formbtn" ID="Button1" runat="server" Text="Mail Yolla"  />
                               <asp:Label ForeColor="Red" Font-Size="15px" Visible="false" ID="Label1" runat="server" Text="Label"></asp:Label>
                               
                           </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>

</asp:Content>
