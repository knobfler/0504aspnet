<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="submit-to-professor.aspx.cs" Inherits="_0504.submit_to_professor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script runat="server">

        protected void Page_Load(object sender, EventArgs e)
        {
            resultLabel.Visible = false;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            이름: <asp:TextBox 
                ID="NameTextBox"
                runat="server" />
            <asp:RequiredFieldValidator ID="NameRequiredValidator" 
                runat="server"
                ErrorMessage="이름을 입력해주세요"
                ControlToValidate="NameTextBox"
                Display="Dynamic"/>
            <br />
            아이디: <asp:TextBox 
                ID="IDTextBox"
                runat="server" />
            <asp:RequiredFieldValidator ID="IDRequiredValidator" 
                runat="server"
                ErrorMessage="아이디를 입력해주세요"
                ControlToValidate="IDTextBox"
                Display="Dynamic"/>
            <br />
            패스워드: <asp:TextBox 
                ID="PassTextBox1"
                runat="server" 
                TextMode="Password"/>
            <asp:RequiredFieldValidator ID="Password1RequiredValidator" 
                runat="server"
                ErrorMessage="비밀번호를 입력해주세요"
                ControlToValidate="PassTextBox1"
                Display="Dynamic"/>

            <br />
            패스워드 체크: <asp:TextBox 
                ID="PassTextBox2"
                runat="server"
                TextMode="Password"/>
            <asp:RequiredFieldValidator ID="Password2RequiredValidator" 
                runat="server"
                ErrorMessage="비밀번호 체크를 입력해주세요"
                ControlToValidate="PassTextBox2"
                Display="Dynamic"/>
            <asp:CompareValidator ID="PasswordCompareValidator"
                runat="server"
                ErrorMessage="두 비밀번호가 같지 않습니다"
                ControlToValidate="PassTextBox1"
                ControlToCompare="PassTextBox2"
                Display="Dynamic" />
            <br />
            
            <br />
            전화번호:
            <br />
            <asp:Label runat="server" Text="000-0000-0000형식으로 입력해주세요"/>
            <br />
            <asp:TextBox 
                ID="PhoneTextBox"
                runat="server"
                />
           
            <asp:RegularExpressionValidator 
                ID="PhoneRegularValidator"
                runat="server"
                ErrorMessage="000-0000-0000형식으로 입력해주세요"
                ControlToValidate="PhoneTextBox"
                SetFocusOnError="true" ValidationExpression="\d{3}-\d{4}-\d{4}"></asp:RegularExpressionValidator>
            <br />
            생년월일:
            <br />
            <asp:Label runat="server" Text="법정 생년월일 8자리를 입력해주세요(숫자만)"/>
            <br />
            <asp:TextBox 
                ID="BirthTextBox"
                runat="server" />
            <br />
            <asp:RegularExpressionValidator 
                ID="BirthRegularValidator"
                runat="server"
                ErrorMessage="법정 생년월일 8자리를 입력해주세요(숫자만)"
                ControlToValidate="BirthTextBox"
                SetFocusOnError="true"
                ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
            <br />
            주소: <asp:TextBox 
                    ID="AddressTextBox"
                    runat="server" />
            <asp:RequiredFieldValidator
                ID="AddressRequiredValidator"
                runat="server"
                ControlToValidate="AddressTextBox"
                Display="Dynamic"
                ErrorMessage="주소가 입력되지 않았습니다"/>

            <br />
            <asp:Label ID="resultLabel" runat="server" Text="검사된 사항"/>
            <asp:ValidationSummary ID="validSummary" runat="server" DisplayMode="BulletList" />
            <asp:Button ID="SubmitButton" runat="server" Text="가입하기"/>
        </div>
    </form>
</body>
</html>
