﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="projectAll.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-weight: bold;
            background-color: #E4CB62;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
 <h2>배화여자대학교 회원 가입</h2>
 <table border="1" style="border: thick double #E4CB62; border-collapse: collapse; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; background-color: #C0C0C0;" >
 <tr>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;"><strong>사용할 아이디</strong></td>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;">
 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp; <strong> <asp:Button ID="Button5" runat="server" Text="중복확인" CausesValidation="False" OnClick="Button5_Click" CssClass="auto-style6" />
     </strong>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="[아이디] 필수입력" 
ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None"
ErrorMessage="[아이디] 영문, 숫자 4~10자로 입력해주세요" ControlToValidate="TextBox1" 
ValidationExpression="[0-9a-zA-Z]{4,10}"></asp:RegularExpressionValidator>
 </td>
 </tr>
 <tr>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;"><strong>비밀번호</strong></td>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;">
 <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" 
Display="None" ErrorMessage="[비밀번호] 필수입력"></asp:RequiredFieldValidator>
 </td>
 </tr>
 <tr>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;"><strong>비밀번호 확인</strong></td>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;">
 <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" 
Display="None" ErrorMessage="[비밀번호 확인] 필수입력"></asp:RequiredFieldValidator>
 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" 
ControlToValidate="TextBox3" Display="None" ErrorMessage="비밀번호가 일치하지 않습니다">
</asp:CompareValidator></td>
 </tr>
 <tr>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;"><strong>이름</strong></td>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;">
 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" 
Display="None" ErrorMessage="[이름] 필수입력"></asp:RequiredFieldValidator>
 </td>
 </tr>
 <tr>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;"><strong>학번</strong></td>
 <td style="border: thin solid #E4CB62; padding: 3px; font-family: '맑은 고딕', Arial, Helvetica, sans-serif;">
 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
 </td>
 </tr>
 </table><br />
        <strong>
 <asp:Button ID="Button6" runat="server" Text="등록합니다" OnClick="Button6_Click" CssClass="auto-style6" /></strong>&nbsp; <strong> <asp:Button ID="Button7" runat="server" CausesValidation="False" Text="Home 으로" OnClick="Button7_Click" CssClass="auto-style6" /></strong><br />
 <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #CC0066"></asp:Label><br />
 <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
DisplayMode="List" ShowMessageBox="True" 
ShowSummary="False" />
 <br />
</div>
</asp:Content>
