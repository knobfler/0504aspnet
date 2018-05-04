<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform-3.aspx.cs" Inherits="_0504.webform_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            숫자를 입력하세요(1~10 사이)
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:RangeValidator 
                ID="RangeValidator1" 
                runat="server" 
                ErrorMessage="1~10 사이의 값을 입력하세요."
                ControlToValidate="TextBox1"
                MaximumValue="10"
                MinimumValue="1"></asp:RangeValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
