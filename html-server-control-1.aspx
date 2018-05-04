<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="html-server-control-1.aspx.cs" Inherits="_0504.html_server_control_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="WebForm" runat="server">
        <div align="center">
            신장: &nbsp;
            <input id="Height" type="text" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;몸무게: &nbsp;
            <input id="Weight" type="text" runat="server" />
            &nbsp;kg
            <br /> <br />
            <input id="Calc" type="submit" value="산출하기" runat="server" />
        </div>
    </form>
</body>
</html>
