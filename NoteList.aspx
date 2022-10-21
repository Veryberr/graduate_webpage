<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NoteList.aspx.cs" Inherits="proj03.NoteList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 64px;
            height: 64px;
        }
        .auto-style3 {
            font-size: xx-large;
            font-weight: normal;
        }
        .auto-style4 {
            background-color: #00CC66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        <img alt="" class="auto-style2" src="IMAGE/판다.png" /><span class="auto-style3"><strong>대나무숲</strong></span><img alt="" class="auto-style2" src="IMAGE/판다.png" /></h2>
<p class="auto-style4"><strong>익명으로 글을 올려보세요</strong></p>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="nID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" OnDeleteCommand="DataList1_DeleteCommand" OnItemDataBound="DataList1_ItemDataBound" RepeatColumns="1" ShowFooter="False" ShowHeader="False">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bul1.gif" />
&nbsp;<strong><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            (<asp:Label ID="Label1" runat="server" Text='<%# Eval("userID") %>'></asp:Label>
            )<asp:Label ID="contentLabel" runat="server" Text='<%# getContent(Eval("content")) %>' />
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# getEmail( Eval("email")) %>' Text='<%# Eval("email") %>'></asp:HyperLink>
            [<asp:Label ID="nDateLabel" runat="server" Text='<%# Eval("nDate", "{0:yyyy-MM-dd HH:mm}") %>' />
            </strong>]<br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("nID") %>' CommandName="Delete">삭제</asp:LinkButton>
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT * FROM [Note] ORDER BY [nID] DESC"></asp:SqlDataSource>
    <hr />
    이름 : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;이메일 :
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;<strong><asp:Label ID="Label3" runat="server"></asp:Label>
    </strong>
    <br />
    <br />
    내용 :
    <asp:TextBox ID="TextBox3" runat="server" Width="460px" ></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="28px" ImageUrl="~/images/arrow.gif" OnClick="ImageButton1_Click" Width="38px" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/save.gif" OnClick="ImageButton2_Click" style="height: 18px" />
    <br />
    <br />
    <strong>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </strong>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
