<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminiletisim.aspx.cs" Inherits="Defacto_E_Ticaret.Adminiletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }


        .auto-style4 {
            width: 256px;
        }

        .auto-style5 {
            text-align: left;
        }

        .auto-style7 {
            width: 40px;
            height: 40px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background: #2e9252; height: 40px; margin-top: 20px; text-align: center; align-items: center;">
        <h4 style="margin: 10px; color: #fff; font-size: 23px; text-align: center; text-transform: uppercase; padding: 17px; line-height: 2px;">Mesajlar</h4>
    </div>
    <div>

        <asp:DataList ID="Data_yorum" runat="server" Width="488px">

            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajAD") %>'></asp:Label>
                        </td>
                        <td class="image_icon">
                           <a href="AdminiletisimDetay.aspx?Mesajid=<%# Eval("Mesajid") %>">
                                <asp:Image class="image_icon" ID="Image1" runat="server" ImageUrl="~/img/details-png-4.png" /></a>
                        </td>
                        <td class="image_icon">
                             <a href="Adminiletisim.aspx?Mesajid=<%# Eval("Mesajid") %>&islem=sil"">
                                 <asp:Image CssClass="image_icon" ID="Image2" runat="server" ImageUrl="~/img/icon/Delete.png" ImageAlign="Right" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
