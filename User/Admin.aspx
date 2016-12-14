﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            height: 10px;
            width:100%;
        }
        .auto-style13 {
            height: 13px;
            width:108px;
            text-align: left;
        }
        .auto-style14 {
            height: 35px;
            width: 104px;
        text-align: center;
    }
        .auto-style15 {
            height: 35px;
            width: 82px;
        text-align: center;
    }
        .auto-style16 {
            height: 13px;
            width: inherit;
            text-align: center;
        }
        .auto-style17 {
            margin-left: 0px;
        }
        .auto-style19 {
            height: 13px;
            width: 70px;
            text-align: left;
        }
        .text-danger {
            font:"Tamaho";
            color:coral;
        }
        .auto-style20 {
            height: 18px;
            width: 70px;
            text-align: left;
        }
        .auto-style21 {
            height: 18px;
            width: 108px;
            text-align: left;
        }
        .auto-style22 {
        height: 18px;
        width: inherit;
    }
        .auto-style23 {
            height: 18px;
            width: 82px;
        }
        .auto-style24 {
            height: 18px;
            width: 104px;
        }
        .auto-style25 {
            height: 35px;
            width: 70px;
            text-align: center;
        }
    .auto-style26 {
        height: 13px;
        width: inherit;
    }
    .auto-style27 {
        height: 13px;
        width: 82px;
    }
    .auto-style28 {
        height: 13px;
        width: 104px;
    }
        .auto-style29 {
            height: 35px;
            width: 108px;
        text-align: center;
    }
    .auto-style30 {
        height: 35px;
        width: 134px;
        text-align: center;
    }
    .auto-style31 {
        height: 18px;
        width: 134px;
    }
    .auto-style32 {
        height: 13px;
        width: 134px;
    }
    .auto-style33 {
        height: 35px;
        width: inherit;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    Xin chào,
    <asp:Label ID="lbtaikhoan" runat="server"></asp:Label>
    . Bạn vừa đăng nhập thành công vào hệ thống.<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Thoát" />
    <br />
    <br />
    
    &nbsp;<asp:SqlDataSource ID="SqlDataSource_NoiDungTin" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString4 %>" SelectCommand="SELECT NoiDungTin.Id, NoiDungTin.TieuDe, NoiDungTin.GiaBan, NoiDungTin.NoiBan, NoiDungTin.NgayDang, NoiDungTin.NoiDung, NoiDungTin.Duyet, NoiDungTin.DaBan, HangXe.HangXe, NoiDungTin.HinhAnh, Account.HoTen AS Expr1 FROM NoiDungTin INNER JOIN HangXe ON NoiDungTin.MaHangXe = HangXe.Id INNER JOIN Account ON NoiDungTin.MaUser = Account.Id" UpdateCommand="UPDATE [NoiDungTin] Set [TieuDe]=@TieuDe, [GiaBan]=@GiaBan, [NoiBan]=@NoiBan,[Duyet]=@Duyet,[DaBan]=@DaBan WHERE [Id]=@Id" DeleteCommand="DELETE FROM NoiDungTin WHERE Id=@Id" >
    <DeleteParameters>
        <asp:Parameter Name="Id" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="TieuDe" />
        <asp:Parameter Name="GiaBan" />
        <asp:Parameter Name="NoiBan" />
        <asp:Parameter Name="Duyet" />
        <asp:Parameter Name="DaBan" />
        <asp:Parameter Name="Id" />
    </UpdateParameters>
    
</asp:SqlDataSource>
    
    
    
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource_NoiDungTin" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="Id" Height="191px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CaptionAlign="Bottom" CellPadding="4" ShowFooter="True" AllowPaging="True" ForeColor="Black" Width="100%" >
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField HeaderText="HinhAnh" SortExpression="HinhAnh">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("HinhAnh") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" Height="90px" ImageAlign="Middle" ImageUrl='<%# Eval("HinhAnh") %>' Width="135px" />
            </ItemTemplate>
            <ControlStyle Height="90px" Width="135px" />
        </asp:TemplateField>
        <asp:BoundField DataField="TieuDe" HeaderText="TieuDe" SortExpression="TieuDe" />
        <asp:BoundField DataField="GiaBan" HeaderText="GiaBan" SortExpression="GiaBan" />
        <asp:BoundField DataField="NoiBan" HeaderText="NoiBan" SortExpression="NoiBan" />
        <asp:BoundField DataField="NgayDang" HeaderText="NgayDang" SortExpression="NgayDang" />
        <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
        <asp:CheckBoxField DataField="Duyet" HeaderText="Duyet" SortExpression="Duyet" />
        <asp:CheckBoxField DataField="DaBan" HeaderText="DaBan" SortExpression="DaBan" />
        <asp:BoundField DataField="HangXe" HeaderText="HangXe" SortExpression="HangXe" />
        <asp:BoundField DataField="Expr1" HeaderText="Nguoi Dang" SortExpression="Expr1" />
    </Columns>
        
        <EditRowStyle Font-Bold="True" Font-Names="Pristina" Font-Overline="False" />
        
        <EmptyDataRowStyle BorderStyle="Dotted" />
        
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        
</asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style12" frame="above" width="100%" rules="cols" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: medium">
        <tr>
            <td class="auto-style25">Hình ảnh<br />
            </td>
            <td class="auto-style29">Tiêu Đề</td>
            <td class="auto-style30">Giá Bán</td>
            <td class="auto-style33">Nơi Bán</td>
            <td class="auto-style33">Nội Dung</td>
            <td class="auto-style15">Duyệt</td>
            <td class="auto-style14">Đã Bán</td>
            <td class="auto-style33">Hãng Xe</td>
            <td class="auto-style33">Người Đăng</td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                
                    
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td class="auto-style21">
                
                <asp:TextBox ID="TextBox1" runat="server" Width="106px"  Font-Names="Tahoma"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox2" runat="server" Width="106px" TextMode="Number" Font-Names="Tahoma"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlTinhThanh" DataTextField="Tên" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataValueField="Id" Font-Names="Tahoma">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlTinhThanh" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString5 %>" SelectCommand="SELECT * FROM [TinhThanh]"></asp:SqlDataSource>
            </td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Font-Names="Tahoma"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:CheckBox ID="CheckBox1"  runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
            </td>
            <td class="auto-style24">
                <asp:CheckBox ID="CheckBox2" runat="server" />
            </td>
            <td class="auto-style22">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource_user" DataTextField="HangXe" DataValueField="Id" Font-Names="Tahoma">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource_user" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString %>" SelectCommand="SELECT * FROM [HangXe]"></asp:SqlDataSource>
            </td>
            <td class="auto-style22">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="HoTen" DataValueField="Id" Font-Names="Tahoma">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString %>" SelectCommand="SELECT [HoTen], [Id] FROM [Account]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuaBanXeConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                    &nbsp;</td>
            <td class="auto-style13">
                
                &nbsp;</td>
            <td class="auto-style32">
                </td>
            <td class="auto-style26">
                </td>
            <td class="auto-style26"></td>
            <td class="auto-style27"></td>
            <td class="auto-style28"></td>
            <td class="auto-style16">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Text="Đăng Tin" Width="102px" OnClick="Button1_Click1" />
            </td>
            <td class="auto-style26"></td>
        </tr>
    </table>
    <br />
    <br />



    
</asp:Content>
