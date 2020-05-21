<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="Defacto_E_Ticaret.UyeOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="Aciklama1">
            <div class="cizgi1">
               
                
                <h2 style="text-align:center; font-size:25px; color:#182ea7; letter-spacing:1px; font-weight:bold;text-transform:uppercase;">Üye ol</h2>
                <hr style="border:1px solid #1d2a74" />
                <div class="Deneme2">
                    <p class="FormPE">Kullanıcı Adı</p>
                    <p>
                        <asp:TextBox CssClass="textbax" ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Kullanıcı Adını Boş geçilmez" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="Deneme2">
                    <p class="FormPE" >Şifre</p>
                    <p class="Fomrpe2">
                        <asp:TextBox CssClass="textbax" ID="Txt_sifre" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator2" ControlToValidate="Txt_sifre" runat="server" ErrorMessage="Şifre kısmı boş geçilmez" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </p>
                </div>
                <div class="Deneme2">
                    <p class="FormPE">Şifre Tekrar</p>
                    <p>
                        <asp:TextBox CssClass="textbax" ID="Txt_S_Tekrar" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Şifre Boş geçilmez" ControlToValidate="Txt_S_Tekrar"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator CssClass="Requ" ID="CompareValidator1" runat="server" ErrorMessage="Şifre Uyuşmuyor" ControlToValidate="Txt_S_Tekrar" ControlToCompare="Txt_sifre"></asp:CompareValidator>

                    </p>

                </div>
                <div class="Deneme2">
                    <p class="FormPE"> Adresiniz</p>
                    <p>
                        <asp:TextBox CssClass="textbax" ID="Txt_adres" runat="server" TextMode="MultiLine" Height="50px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Adres Boş geçilmez" ControlToValidate="Txt_adres"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="Deneme2">
                    <p class="FormPE">
                        E-Mail
                    </p>
                    <p>
                        <asp:TextBox CssClass="textbax" ID="Txt_email" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator5" runat="server" ErrorMessage="E-Mail boş geçilemez" ControlToValidate="Txt_email"></asp:RequiredFieldValidator>

                    </p>
                </div>
                <div class="Deneme2">
                    <p class="FormPE">
                        Telefon
                    </p>
                    <div>
                        <p>
                            <asp:TextBox CssClass="textbax" ID="txt_tel" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="Requ" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Telefon boş geçilemez" ControlToValidate="txt_tel"></asp:RequiredFieldValidator>

                        </p>
                    </div>

                </div>
                <div>
                    <asp:Button CssClass="formbtn" ID="Button1" runat="server" Text="Üye Ol" OnClick="Button1_Click1" />
                    
                    <asp:Label CssClass="FormKayitLabel"  ID="Label1" runat="server" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>
                

            </div>
        </div>
    </div>
</asp:Content>
