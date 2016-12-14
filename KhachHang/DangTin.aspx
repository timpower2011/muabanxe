<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DangTin.aspx.cs" Inherits="KhachHang_DangTin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    Xin chào,
    <asp:Label ID="lbtaikhoan" runat="server" style="color: #FF0000"></asp:Label>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Thoát" />
    <br />
    <br />
&nbsp;<table style="width: 153%;">
        <tr>
            <td style="width: 150px">Hình ảnh</td>
            <td colspan="3">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="col-md-offset-0" style="margin-left: 0px" Width="299px" />
                </td>
        </tr>
        <tr>
            <td colspan="2">Tiêu Đề</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Width="649px" CssClass="col-md-offset-0" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">Giá Bán</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox2" runat="server" Font-Names="Tahoma" TextMode="Number" Width="345px" Height="18px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">Nơi Bán</td>
            <td colspan="3">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlTinhThanh" DataTextField="Tên" DataValueField="Id" Font-Names="Tahoma" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlTinhThanh" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString %>" SelectCommand="SELECT [Id], [Tên] FROM [TinhThanh]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td style="width: 150px">Nội Dung</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox5" runat="server" Font-Names="Tahoma" TextMode="MultiLine" Height="294px" Width="661px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">Hãng Xe</td>
            <td colspan="3">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource1" DataTextField="HangXe1" DataValueField="Id" Font-Names="Tahoma">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Id, HangXe1)" TableName="HangXes">
                </asp:LinqDataSource>
                </td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 5px">&nbsp;</td>
            <td style="width: 144px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" OnClick="Button1_Click1" Text="Đăng Tin" Width="102px" style="margin-left: 0px" />
            </td>
        </tr>
    </table>
</asp:Content>

