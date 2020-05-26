<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUrunEkle.aspx.cs" Inherits="Defacto_E_Ticaret.AdminUrunEkle" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Menuler {
            height: auto;
            width: 200px;
            margin-left: 70px;
            background: #1c9948;
            float: left;
            font-size: large;
            text-align: center;
            color: #fff;
        }

        .A_menuler_tr {
            border: 2px solid #c9daea;
            transition: transform;
            text-align: center;
            width: 200px;
            cursor: pointer;
            padding:10px;
        }

        .Menuler a {
            text-decoration:none;
        }


        .A_menuler_tr:hover {
            background: #3c7e21;
            color: #FFF;
        }


        .A_menuler_baslik {
            font-size: 20px;
            font-weight: bold;
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <div class="container">
            <div class="col6">
                <div class="logo">
                    <a href="Default.aspx">
                        <img src="img/icon/defacto-logo-png-1.png"></a>
                </div>
            </div>
        </div>
    </header>
    <div class="col">
        <div>
            <h2 style="text-align: center; color: #0f1a5b">Admin Paneli</h2>
        </div>

    </div>

    <div class="col3">

        <div class="Menuler">

            <table>
                <tr>
                    <td style="padding:0;" class="A_menuler_baslik">MENÜLER</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="A_menuler_tr"><a style="color:#fff;" href="Kategori.aspx">KATEGORİLER</a></td>
                </tr>
                <tr>
                    <td class="A_menuler_tr"><a style="color:#fff;" href="Yemekler.aspx">YEMEKLER</a></td>
                </tr>
                <tr>
                    <td class="A_menuler_tr"><a href="Yorumlar.aspx" style="color:#fff;">YORUMLAR</a> </td>
                </tr>
                <tr>
                    <td class="A_menuler_tr"><a style="color:#fff;" href="Mesajlar.aspx">MESAJLAR</a></td>
                </tr>
                <tr>
                    <td class="A_menuler_tr"><a style="color:#fff;" href="GununYemegiAdmin.aspx">YEMEKLERİ</a></td>
                </tr>
                <tr>
                    <td class="A_menuler_tr"><a style="color:#fff;" href="Tarifler.aspx">ÖNERİLER</a></td>
                </tr>
                <tr>
                    <td class="A_menuler_tr"><a style="color:#fff;" href="#">HAKKIMIZDA</a></td>
                </tr>

            </table>
        </div>
    </div>

    <div class="col2" style="margin-left: 400px;">
        <table>
            <tr>
                <td>Ürün AD
                </td>
                <td>
                    <asp:TextBox CssClass="textbax" ID="txt_ad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ürün Fiyat
                </td>
                <td>
                    <asp:TextBox CssClass="textbax" ID="txt_fiyat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ürün Beden
                </td>
                <td>
                    <asp:DropDownList CssClass="textbax" ID="Drop_Beden" runat="server">
                        <asp:ListItem Enabled="true">XS</asp:ListItem>
                        <asp:ListItem Enabled="true">S</asp:ListItem>
                        <asp:ListItem Enabled="true">M</asp:ListItem>
                        <asp:ListItem Enabled="true">L</asp:ListItem>
                        <asp:ListItem Enabled="true">XL</asp:ListItem>
                        <asp:ListItem Enabled="true">XXL</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Ürün Cins
                </td>
                <td>
                    <asp:DropDownList CssClass="textbax" ID="Drop_cins" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Ürün Renk
                </td>
                <td>
                    <asp:TextBox CssClass="textbax" ID="txt_renk" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ürün Özellik
                </td>
                <td>
                    <asp:TextBox CssClass="textbax" ID="txt_özellik1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ürün Detaylı
                </td>
                <td>
                    <asp:TextBox CssClass="textbax" ID="txt_ozellik2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ürün Resim
                </td>
                <td>
                    <asp:FileUpload CssClass="textbax" ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Ürün Resim2
                </td>
                <td>
                    <asp:FileUpload CssClass="textbax" ID="FileUpload2" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Ürün Resim3
                </td>
                <td>
                    <asp:FileUpload CssClass="textbax" ID="FileUpload3" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Btn_ekle" runat="server" Text="Ekle" Style="height: 26px" />
                </td>
                <td>
                    <asp:Label ForeColor="Green" Font-Size="Large" Visible="false" ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>

            </tr>
        </table>
    </div>


</asp:Content>
