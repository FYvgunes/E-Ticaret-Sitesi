<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı2.Master" AutoEventWireup="true" CodeBehind="Odemeİslemi.aspx.cs" Inherits="Defacto_E_Ticaret.Odemeİslemi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 200px;
            margin-left: 250px;
            text-align: center;
            font-size: 18px;
            background: #0a560a;
            color: #fff;
            padding: 5px;
            margin-top: 10px;
        }

        .auto-style4 {
            height: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="Aciklama3">
            <div class="cizgi3" style="margin-left:110px;">
                <h2 style="text-align: center; font-size: 25px; color: #182ea7; letter-spacing: 1px; font-weight: bold; text-transform: uppercase;">Ödeme İŞlemi</h2>
                <hr style="border: 1px solid #1d2a74" />
                <table>
                    <tr>
                        <td class="auto-style4">İsminiz</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtCardName" CssClass="textbax" runat="server" autocomplete="off"></asp:TextBox>
                            <asp:RegularExpressionValidator ForeColor="Red" ID="txtCardNameRegularExpressionValidator" runat="server"
                                ControlToValidate="txtCardName" ErrorMessage="İsim bilgilerinizde geçersiz karakter var.<br />"
                                ValidationExpression="[a-zA-Z. çÇüÜıİğĞöÖşŞ]+" Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Kart Numarası</td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txtCardNumber" runat="server" autocomplete="off" MaxLength="16"></asp:TextBox>

                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" ControlToValidate="txtCardNumber" runat="server" ErrorMessage="Kart Numarası Eksik veya Hatalı"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Son Kullanım Tarihi</td>
                        <td>
                            <asp:DropDownList CssClass="textbax" ID="ddlMonth" runat="server" Style="min-width: 90px; width: 70px;"></asp:DropDownList>
                            /
                            <asp:DropDownList CssClass="textbax" ID="ddlYear" runat="server" Style="min-width: 65px; width: 45px;"></asp:DropDownList>
                    </tr>
                    <tr>
                        <td>Güvenlik Kodu</td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txtCCV" runat="server" Style="min-width: 90px; width: 70px; float: left;" autocomplete="off" MaxLength="3"></asp:TextBox>

                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Güvenlik kodu boş veya aynlış girildi" ControlToValidate="txtCCV"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <div>
                  <a href="Odemeİslemi.aspx?odemeid=<%# Eval("odemeid") %>"><asp:Button CssClass="auto-style3" ID="Button1" runat="server" Text="Ödeme Yap" OnClick="Button1_Click" /></a>  
                </div>
                <div>
                    <asp:Label CssClass="label1" ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label></div>

            </div>
        </div>
    </div>


</asp:Content>
