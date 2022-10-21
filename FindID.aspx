<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindID.aspx.cs" Inherits="projectAll.FindID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            color: #FF0000;
        }
        .auto-style5 {
            color: #003300;
        }
        .auto-style6 {
            color: #0000CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            :: 아이디 중복확인<br />
            <hr />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="중복확인" CssClass="auto-style5" OnClick="Button1_Click" />
            <span class="auto-style2">
            <br />
            <br />
            </span>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
            <span class="auto-style2">&nbsp;</span></strong><asp:Button ID="Button2" runat="server" Text="사용" OnClick="Button2_Click" />
            <span class="auto-style2">
            <br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* 아이디를 입력해주세요" 
ForeColor="#FF3300"></asp:RequiredFieldValidator>&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
ControlToValidate="TextBox1" ErrorMessage="* 영문, 숫자 4~10자리로 입력해주세요" 
ForeColor="Red" ValidationExpression="[0-9a-zA-Z]{4,10}"></asp:RegularExpressionValidator>
            </span>
        </div>
    </form>
</body>
</html>
