<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUrunler.aspx.cs" Inherits="Defacto_E_Ticaret.AdminUrunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .urunbtn {
            background: #0a560a;
            
            color: #fff;
            width:120px;
            height:40px;
            transition:.5s ease;
        }

            .urunbtn:hover {
                background: #339933;
                color: #fff;
            }

        .auto-style3 {
            display: flex;
            width: 137%;
            margin: 0 auto;
        }
        .auto-style4 {
            color: #fff;

           
            
            background: #0a560a;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style3">
        <div class="as">
            <div class="cizgi1">
                <h2 style="font-size:25px; color:#363f76">Ürün Ekle</h2>
                <table>
                    <tr>
                        <td>Ürün AD
                        </td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txt_ad" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ürün Ad Boş geçilmez" ControlToValidate="txt_ad" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Fiyat
                        </td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txt_fiyat" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txt_fiyat" ErrorMessage="Ürün Fiyat Boş geçilmez"></asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ControlToValidate="Drop_Beden" SetFocusOnError="true" ErrorMessage="Ürün Cins Boş geçilmez"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>Ürün Cins
                        </td>
                        <td>

                            <asp:DropDownList CssClass="textbax" ID="DropDownList1" runat="server">
                                <asp:ListItem>Erkek</asp:ListItem>
                                <asp:ListItem>Kadın</asp:ListItem>
                                <asp:ListItem>Çocuk</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Ürün Cins Boş geçilmez" ForeColor="Red" SetFocusOnError="true" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Kategori
                        </td>
                        <td>

                            <asp:DropDownList CssClass="textbax" ID="Drop_Kategori" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ürün Kategori Boş geçilmez" ForeColor="Red" SetFocusOnError="true" ControlToValidate="Drop_Kategori"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Renk
                        </td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txt_renk" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txt_renk" ForeColor="Red" SetFocusOnError="true" runat="server" ErrorMessage="Ürün Renk Boş Geçilmez"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Özellik
                        </td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txt_özellik1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Özellik Boş Geçilmez" SetFocusOnError="true" ControlToValidate="txt_özellik1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Detaylı
                        </td>
                        <td>
                            <asp:TextBox CssClass="textbax" ID="txt_ozellik2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Özellik Boş geçilmez" ControlToValidate="txt_ozellik2" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Resim
                        </td>
                        <td>
                            <asp:FileUpload CssClass="textbax" ID="FileUpload1" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Resim Yüklemeden Geçilmez" ForeColor="Red" SetFocusOnError="true" ControlToValidate="FileUpload1"> </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Resim2
                        </td>
                        <td>
                            <asp:FileUpload CssClass="textbax" ID="FileUpload2" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Resim Yüklemeden Geçilmez" ForeColor="Red" SetFocusOnError="true" ControlToValidate="FileUpload2"> </asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Resim3
                        </td>
                        <td>
                            <asp:FileUpload CssClass="textbax" ID="FileUpload3" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Resim Yüklemeden Geçilmez" ForeColor="Red" SetFocusOnError="true" ControlToValidate="FileUpload3"> </asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ForeColor="Green" Font-Size="Large" Visible="false" ID="Label1" runat="server" Text="Label"></asp:Label>
                            <asp:Label  ForeColor="Red" Font-Size="Large" Visible="false" ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>

                        <td>
                            <asp:Button CssClass="urunbtn" ID="Btn_ekle" runat="server" Text="Ekle" Height="36px" Width="136px" OnClick="Btn_ekle_Click" />

                        </td>

                    </tr>
                </table>

            </div>
        </div>
    </div>
</asp:Content>
