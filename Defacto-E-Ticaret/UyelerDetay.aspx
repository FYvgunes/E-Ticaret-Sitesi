<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UyelerDetay.aspx.cs" Inherits="Defacto_E_Ticaret.UyelerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="background:#2e9252; height:40px; margin-top:20px;margin-left:25px; text-align:center; align-items:center;">
        <h4 style=" margin:10px; color:#fff; font-size:23px; text-align:center; text-transform:uppercase;padding:13px;  line-height:2px;">UYE DETAY</h4>
    </div>
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>AD SOYAD</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="txt_Ad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MAİL</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="txt_mail" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>ŞİFRE</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="txt_sifre" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>TEL NO</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="txt_telno" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>ADRES</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="txt_adres" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" ForeColor="Green" Font-Size="Large"></asp:Label></td>
            <td>
                <asp:Button CssClass="formbtn" ID="Button1" runat="server"  Text="Güncelle" OnClick="Button1_Click"  />
            </td>
        </tr>
        </table>
</asp:Content>
