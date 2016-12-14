<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="chi-tiet.aspx.cs" Inherits="KhachHang_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <a>
        <table style="width: 142%;">
            <tr>
                <td style="width: 408px">&nbsp;</td>
                <td style="width: 555px">&nbsp;</td>
                <td>
    <a>
        <asp:Button ID="Button1" runat="server" Text="Đăng Tin" Height="42px" Width="158px" />
        </a>
                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
    </table>
        </a>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1_chitiettin" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" BorderStyle="None" GridLines="Vertical">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
            <asp:Label ID="TieuDeLabel" runat="server" Font-Size="30pt" ForeColor="Blue" Text='<%# Eval("TieuDe") %>'  style="font-size: xx-large" />
            &nbsp;<br />
            <em><span style="font-size: small">
            <asp:Label ID="MaHangXeLabel" runat="server" ForeColor="#FF6600" Text='<%# Eval("HangXe") %>' />
            &nbsp;Ngày đăng:
            <asp:Label ID="NgayDangLabel" runat="server" Text='<%# Eval("NgayDang","{0:dd/MM/yyyy}") %>' />
            </span></em>
            <br />
            <table style="width:1200px;">
                <tr>
                    <td colspan="2" class="text-center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/User/"+Eval("HinhAnh") %>' Width="500px" ImageAlign="Middle" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 11px; width: 676px;" class="text-center">
                        <strong><span style="color: #FF0000">
                        <br />
                        Giá: </span>
                        <asp:Label ID="GiaBanLabel" runat="server" ForeColor="Red" style="color: #FF0000" Text='<%# Eval("GiaBan","{0:0,000}") %>' />
                        <span style="font-size: x-small">&nbsp;VND</span><br /></strong>Địa điểm:<span style="color: #FF9900"><strong><span style="text-decoration: underline"> </span>
                        <asp:Label ID="NoiBanLabel" runat="server" style="text-decoration: underline" Text='<%# Eval("NoiBan") %>' />
                        </strong></span>
                        <br />
&nbsp;</td>
                    <td style="height: 11px; color: #0000CC;">
                        <strong><span >Người đăng:</span><asp:Label ID="NguoiDangLabel" runat="server"  Text='<%# Eval("HoTen") %>'></asp:Label>
                        <br />
                        <span style="color: red"><span style="text-decoration: underline"><span style="font-size: large">SĐT: </span></span></span></strong><span style="color: red"><strong><span style="font-size: large">
                        <asp:Label ID="SDTLabel" runat="server" style="text-decoration: underline" Text='<%# Eval("Sdt") %>'></asp:Label>
                        </span></strong></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 676px">
                        <br style="font-size: large" />
                        <strong>THÔNG TIN CHI TIẾT: </strong>
                    </td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-left" colspan="2">
                        <asp:Label ID="NoiDungLabel" runat="server" style="font-size: large" Text='<%# Eval("NoiDung") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" ForeColor="White" Font-Bold="True" />
    </asp:DataList>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Id, TieuDe, GiaBan, NoiBan, NgayDang, NoiDung, MaHangXe, MaUser, HinhAnh)" TableName="NoiDungTins" Where="Id == @Id">
        <WhereParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:SqlDataSource ID="SqlDataSource1_chitiettin" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString6 %>" SelectCommand="SELECT NoiDungTin.TieuDe, NoiDungTin.GiaBan, NoiDungTin.Id, NoiDungTin.NoiBan, NoiDungTin.NgayDang, NoiDungTin.NoiDung, NoiDungTin.HinhAnh, Account.HoTen, Account.Sdt,HangXe.HangXe FROM NoiDungTin INNER JOIN HangXe ON NoiDungTin.MaHangXe = HangXe.Id INNER JOIN Account ON Account.Id = NoiDungTin.MaUser WHERE (NoiDungTin.Id = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>

