﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform-4.aspx.cs" Inherits="_0504.webform_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            우편번호:<asp:TextBox 
                        ID="TextBox1"
                        runat="server"></asp:TextBox>
                        (예. 123-456)<br />
            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" 
                runat="server" 
                ErrorMessage="우편번호 형식이 잘못되었습니다."
                ControlToValidate="TextBox1"
                SetFocusOnError="True"
                ValidationExpression="\d{3}-\d{3}"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
