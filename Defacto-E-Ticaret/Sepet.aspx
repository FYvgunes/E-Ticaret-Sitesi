<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="Defacto_E_Ticaret.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 252px;
            padding:5px;

        }

        .auto-style4 {
            width: 120px;
            padding:5px;
        }

        .auto-style5 {
            width: 500px;
            padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="Aciklama3">
            <div class="cizgi3" style="width:150%; margin-left:100px;">
                <div>

                    <h3 style="text-align: center; color: red; font-size: 20px; padding: 5px; margin: 6px;" id="sonuc" runat="server"></h3>
                    <h4 style="text-align: center; font-size: 17px; padding: 5px; margin: 6px;" id="H1" runat="server"></h4>

                    <h3 style="font-size: 15px; text-align: center; padding: 5px; margin: 6px; color: green;" id="sonuc3" runat="server"></h3>
                    <h2 style="text-align: center; font-size: 23px; color: #000; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; text-transform: uppercase">Sepet</h2>
                    <h4 style="text-align: center; font-size: 17px; padding: 5px; margin: 6px;" id="sonuc2" runat="server"></h4>
                    <table style="border: 1px medium #333; text-align: center; word-spacing: normal; vertical-align: middle;">
                        <tr>
                            <th class="auto-style4">Ürün Resim</th>


                            <th class="auto-style5">Ürün İsim</th>


                            <th class="auto-style3">Ürün Fiyat</th>


                        </tr>
                       
                       <%-- <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                 <tr>
                                    <th>
                                        <asp:Image  ImageUrl='<%# Eval("Fotolar") %>' Width="150px" ID="Image1" runat="server" />
                                    </th>

                                    <th style="font-size: 18px; font-weight: bold; text-align: center; margin: 0 auto;"><%# Eval("UrunAd")%></th>
                                    <th style="font-size: 18px; font-weight: bold; text-align: center;"><%# Eval("UrunFiyat","{0:c}")%></th>
                                </tr>
                            </ItemTemplate>
                        </asp:DataList>--%>
                        <asp:DataList ID="DataList1" runat="server" >
                            <ItemTemplate>
                                <tr>
                                    <th>
                                        <asp:Image  ImageUrl='<%# Eval("Fotolar") %>' Width="150px" ID="Image1" runat="server" />
                                    </th>

                                    <th class="auto-style5" style="font-size: 18px; vertical-align:middle; text-align: center; padding:10px; margin: 0 auto;"><%# Eval("UrunAd")%></th>
                                    <th class="auto-style3"style="font-size: 18px; vertical-align:middle; font-weight: bold; text-align: center; initial-letter:normal; padding:10px;  "><%# Eval("UrunFiyat","{0:c}")%></th>
                                </tr>
                            </ItemTemplate>
                        </asp:DataList>
                     </table>   
               <%--     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db_GiyimConnectionString %>" SelectCommand="SELECT uyeid, Tbl_Sepetler.urunid,Fotolar, urunAD, UrunFiyat FROM Tbl_Sepetler,Tbl_urunler WHERE uyeid=<%# Eval() %> and Tbl_Sepetler.urunid=Tbl_urunler.urunid"></asp:SqlDataSource>   
                 --%>
                </div>

            </div>

        </div>


    </div>

</asp:Content>
