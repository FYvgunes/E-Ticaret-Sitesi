<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="Defacto_E_Ticaret.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div>
            <table style="text-align: left; width: 400px">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Ürün ID"></asp:Label>
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Fiyat"></asp:Label>
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:TextBox ID="txtFiyat" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Adet"></asp:Label>
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdet" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnSepeteEkle" runat="server" Text="Sepete Ekle" OnClick="btnSepeteEkle_Click" />
                    </td>
                </tr>
            </table>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" OnItemCommand="DataList1_ItemCommand"
                ForeColor="#333333" BorderColor="Black" BorderWidth="1px" CellSpacing="2" Font-Bold="False"
                Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                HorizontalAlign="Center" ShowFooter="False">
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderTemplate>
                    <table style="text-align: left; width: 400px;">
                        <tr>
                            <td style="text-align: left; width: 10px;">ID
                            </td>
                            <td style="text-align: left; width: 30px;">AD
                            </td>
                            <td style="text-align: left; width: 30px;">FIYAT
                            </td>
                            <td style="text-align: left; width: 30px;">ADET
                            </td>
                            <td style="text-align: left; width: 50px;">TUTAR
                            </td>
                            <td style="text-align: left; width: 10px;">SİL
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table style="text-align: center; width: 400px;">
                        <tr>
                            <td style="text-align: left; width: 30px;">
                                <%# Eval("id") %>
                            </td>
                            <td style="text-align: left; width: 100px;">
                                <%# Eval("isim") %>
                            </td>
                            <td style="text-align: left; width: 30px;">
                                <%# Eval("fiyat") %>
                            </td>
                            <td style="text-align: left; width: 15px;">
                                <%# Eval("adet") %>
                            </td>
                            <td style="text-align: left; width: 50px;">
                                <%# Eval("tutar") %>
                            </td>
                            <td style="text-align: center; width: 10px;">
                                <asp:LinkButton ID="btnSil" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="sil">Sil</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <div>
                <asp:Label ID="lblToplam" runat="server"></asp:Label>
            </div>
        </div>
    </div>





</asp:Content>
