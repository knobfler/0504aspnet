﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform-1.aspx.cs" Inherits="_0504.webform_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script runat="server">
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "유효성 검사완료";
            }
            else
            {
                Label1.Text = "유효하지 않은 정보";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            아이디: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidation1" runat="server" ErrorMessage="아이디를 입력하세요"
                ControlToValidate="TextBox1">
            </asp:RequiredFieldValidator><br />
            비밀번호: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="비밀번호를 입력하세요"
                ControlToValidate="TextBox2">
            </asp:RequiredFieldValidator><br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /> <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
