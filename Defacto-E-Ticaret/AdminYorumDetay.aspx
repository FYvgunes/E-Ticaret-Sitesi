<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumDetay.aspx.cs" Inherits="Defacto_E_Ticaret.AdminYorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            margin-left:80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background:#2e9252; height:40px; margin-top:20px;margin-left:25px; text-align:center; align-items:center;">
        <h4 style=" margin:10px; color:#fff; font-size:23px; text-align:center; text-transform:uppercase;padding:13px;  line-height:2px;">YORUM Detay</h4>
    </div>
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>YORUM AD SOYAD</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>YORUM MAİL</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>YORUM İÇERİK</td>
            <td>
                <asp:TextBox CssClass="textbax" ID="TextBox3" TextMode="MultiLine" Height="50px" runat="server"></asp:TextBox>
            </td>
        </tr>
      
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" ForeColor="Green" Font-Size="Large"></asp:Label></td>
            <td>
                <asp:Button CssClass="formbtn" ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
    
</asp:Content>
