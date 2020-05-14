<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Defacto_E_Ticaret.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
    <asp:Repeater ID="tekrarlayici" runat="server">
        <ItemTemplate>
            <div class="col4">
                <div>
                    <img src="img/erkek/erkek1.png" alt="Alternate Text" />

                </div>
                <h2>Ürün isim</h2>
                <h3>Ürün Fiyat</h3>
                <div>
                    <a href="#">Sepet</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

   </div>
</asp:Content>
