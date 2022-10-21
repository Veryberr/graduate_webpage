<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="myLogin.aspx.cs" Inherits="projectAll.myLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 442px;
            height: 147px;
        }
    .auto-style3 {
        height: 24px;
            width: 487px;
        }
    .auto-style4 {
        width: 101px;
    }
    .auto-style5 {
        height: 24px;
        width: 101px;
    }
    .auto-style6 {
        color: #6600CC;
    }
    .auto-style7 {
            width: 562px;
        }
    .auto-style8 {
        height: 24px;
        width: 562px;
    }
        .auto-style9 {
            width: 3578px;
            margin-right: 0px;
        }
        .auto-style10 {
            width: 3578px;
        }
        .auto-style11 {
            width: 487px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>로그인</h2>
<table class="auto-style2" style="border: medium solid #E4CB62; font-family: '배스킨라빈스 R'; text-align: left; background-color: #C0C0C0;">
    <tr>
        <td class="auto-style9" style="border: medium solid #E4CB62">로그인</td>
        <td class="auto-style7" style="border: medium solid #E4CB62">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="2" style="border: medium solid #E4CB62" class="auto-style11">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/IMAGE/제목을_입력해주세요_-001__1_-removebg-preview.png" OnClick="ImageButton3_Click" ValidateRequestMode="Enabled" Width="110px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9" style="border: medium solid #E4CB62">비밀번호</td>
        <td class="auto-style7" style="border: medium solid #E4CB62">
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" style="border: medium solid #E4CB62"></td>
        <td class="auto-style8" style="border: medium solid #E4CB62">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="로그인 상태 유지" />
        </td>
        <td class="auto-style3" style="border: medium solid #E4CB62"></td>
    </tr>
</table>
<br />
<br />
<strong>
<asp:Label ID="Label2" runat="server" CssClass="auto-style6"></asp:Label>
</strong>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
