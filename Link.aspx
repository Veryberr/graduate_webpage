<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Link.aspx.cs" Inherits="projectAll.Link" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 569px;
        height: 803px;
        margin-right: 121px;
    }
    .auto-style5 {
            width: 30px;
            height: 68px;
            text-align: center;
        }
    .auto-style6 {
        height: 68px;
    }
    .auto-style7 {
        height: 24px;
        color: #FFFFFF;
        background-color: #3333FF;
            text-align: left;
        }
        .auto-style8 {
            width: 30px;
            height: 24px;
            text-align: center;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            color: #FFFFFF;
            background-color: #0000FF;
        }
        .auto-style12 {
            height: 32px;
            background-color: #0000FF;
        text-align: left;
    }
        .auto-style13 {
            width: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style12" colspan="2" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <span class="auto-style10"><strong>학교 주요 사이트 바로가기&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/IMAGE/009.png" PostBackUrl="http://www.baewha.ac.kr/mbs/kr/index.jsp" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">학교홈페이지</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/IMAGE/010.png" PostBackUrl="http://portal.baewha.ac.kr/" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">배화 포탈</td>
            </tr>
            <tr>
                <td class="auto-style5" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/IMAGE/011.png" PostBackUrl="https://lms.smau.or.kr/xn-sso/login.php?auto_login=&amp;sso_only=&amp;cvs_lgn=1&amp;cms_lgn=&amp;prefix=&amp;return_url=https%3A%2F%2Flms.smau.or.kr%2Fxn-sso%2Fgw-cb.php%3Ffrom%3D%26login_type%3Dstandalone%26return_url%3D" />
                </td>
                <td class="auto-style6" style="border-style: double; border-color: #00CCFF; border-collapse: separate">엑스러닝</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2" style="border-style: double; border-color: #00CCFF; border-collapse: separate"><strong>학과별 홈페이지</strong></td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/IMAGE/012.png" OnClick="ImageButton4_Click" PostBackUrl="http://class.baewha.ac.kr/user/tcuisine/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">조리학과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/IMAGE/013.png" PostBackUrl="http://class.baewha.ac.kr/user/japan/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">일본어과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/IMAGE/014.png" PostBackUrl="http://class.baewha.ac.kr/user/china/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">관광중국어과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/IMAGE/015.png" PostBackUrl="http://class.baewha.ac.kr/user/fashion/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">패션산업학과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/IMAGE/016.png" PostBackUrl="http://class.baewha.ac.kr/user/taxacc/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">세무회계과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/IMAGE/017.png" PostBackUrl="http://class.baewha.ac.kr/user/globaltour/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">호텔관광과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/IMAGE/018.png" PostBackUrl="http://class.baewha.ac.kr/user/english/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">비지니스영어과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/IMAGE/019.png" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">비서행정과</td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/IMAGE/020.png" PostBackUrl="http://class.baewha.ac.kr/user/itrade/index.action" />
                </td>
                <td class="auto-style9" style="border-style: double; border-color: #00CCFF; border-collapse: separate">국제무역물류학과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/IMAGE/021.png" PostBackUrl="http://class.baewha.ac.kr/user/business/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">경영과</td>
            </tr>
            <tr>
                <td class="auto-style5" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/IMAGE/022.png" PostBackUrl="http://class.baewha.ac.kr/user/childcare/index.action" />
                </td>
                <td class="auto-style6" style="border-style: double; border-color: #00CCFF; border-collapse: separate">아동보육과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/IMAGE/023.png" PostBackUrl="http://class.baewha.ac.kr/user/hanbokculture/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">한복문화콘텐츠과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/IMAGE/024.png" PostBackUrl="http://class.baewha.ac.kr/user/food/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">식품영양학과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/IMAGE/025.png" PostBackUrl="http://class.baewha.ac.kr/user/childhood/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">유아교육과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="~/IMAGE/026.png" PostBackUrl="http://class.baewha.ac.kr/user/smartit/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">스마트IT학과</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: double; border-color: #00CCFF; border-collapse: separate">
                    <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="~/IMAGE/027.png" PostBackUrl="http://class.baewha.ac.kr/user/infosecu/index.action" />
                </td>
                <td style="border-style: double; border-color: #00CCFF; border-collapse: separate">SW보안융합학과</td>
            </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
</asp:Content>
