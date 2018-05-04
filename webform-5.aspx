<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform-5.aspx.cs" Inherits="_0504.webform_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        MultiOfThree = (Source, arguments) => {
            var val = arguments.Value;
            if (val % 3 == 0) {
                arguments.IsValid = true;
            } else {
                arguments.IsValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            3의 배수를 입력 하세요. <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:CustomValidator 
                ID="CustomValidator1" 
                runat="server" 
                ErrorMessage="3의 배수가 아닙니다."
                ControlToValidate="TextBox1"
                ClientValidationFunction="MultiOfThree"></asp:CustomValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
