<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı2.Master" AutoEventWireup="true" CodeBehind="Odemeİslemi.aspx.cs" Inherits="Defacto_E_Ticaret.Odemeİslemi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="Aciklama3">
        <div class="cizgi3">
              <h2 style="text-align:center; font-size:25px; color:#182ea7; letter-spacing:1px; font-weight:bold;text-transform:uppercase;">Ödeme İŞlemi</h2>
                <hr style="border:1px solid #1d2a74" />
             <table>
    <tr>
        <td>İsminiz</td>
        <td>
            <asp:TextBox ID="txtCardName" CssClass="textbax" runat="server" autocomplete="off" required></asp:TextBox>
            <asp:RegularExpressionValidator ForeColor="Red"  ID="txtCardNameRegularExpressionValidator" runat="server"
    ControlToValidate="txtCardName" ErrorMessage="İsim bilgilerinizde geçersiz karakter var.<br />"
    ValidationExpression="[a-zA-Z. çÇüÜıİğĞöÖşŞ]+" Display="Dynamic"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Kart Numarası</td>
        <td>
            <asp:TextBox CssClass="textbax" ID="txtCardNumber" runat="server" autocomplete="off" required></asp:TextBox>
            <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server"
    ControlToValidate="txtCardNumber" ErrorMessage="Kart numaranız geçersiz karakter var.<br />"
     Display="Dynamic"></asp:RegularExpressionValidator>

        </td>
    </tr>
    <tr>
        <td>Son Kullanım Tarihi</td>
        <td>
            <asp:DropDownList  CssClass="textbax"  ID="ddlMonth" runat="server" Style="min-width: 90px; width: 70px;" required></asp:DropDownList>
            /
<asp:DropDownList  CssClass="textbax" ID="ddlYear" runat="server" Style="min-width: 65px; width: 45px;" required></asp:DropDownList>
    </tr>
    <tr>
        <td>Güvenlik Kodu</td>
        <td>
            <asp:TextBox CssClass="textbax" ID="txtCCV" runat="server" Style="min-width: 90px; width: 70px; float: left;" autocomplete="off" required></asp:TextBox>
       <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator2" runat="server"
    ControlToValidate="txtCardNumber" ErrorMessage="Güvenlik Kodu geçersiz karakter var.<br />"
     Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
    </tr>
</table>
<asp:Button CssClass="formbtn" ID="btnCheckout" runat="server" Text="Ödemeyi Tamamla"  UseSubmitBehavior="false" OnClick="btnCheckout_Click1" />
            <asp:Label CssClass="label" ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        </div>
    </div>
    </div>
    
   
</asp:Content>
