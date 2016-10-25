<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            width: 143px;
            height: 32px;
        }
        .auto-style4 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Back</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Full Name :</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is not filled" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Birth Year :</td>
                <td>
                    <asp:TextBox ID="txtBirth" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBirth" ErrorMessage="BirthYear not filled" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtBirth" ErrorMessage="Birth Year not correct" ForeColor="Red" MaximumValue="2013" MinimumValue="1900">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender :</td>
                <td>
                    <asp:RadioButton ID="rdbMale" runat="server" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="rdbFemale" runat="server" GroupName="Gender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nationality :</td>
                <td>
                    <asp:DropDownList ID="drpNation" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Education</td>
                <td>
                    <asp:RadioButton ID="rdbAS" runat="server" GroupName="EDU" Text="diploma" />
                    <asp:RadioButton ID="rdbBA" runat="server" GroupName="EDU" Text="bachlor degree" />
                    <asp:RadioButton ID="rdbMA" runat="server" GroupName="EDU" Text="Master degree" />
                    <asp:RadioButton ID="rdbPhd" runat="server" GroupName="EDU" Text="PHD" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Username :</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" ErrorMessage="Username not filled " ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="password not filled " ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password :</td>
                <td>
                    <asp:TextBox ID="txtCPassword" runat="server" Width="200px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" ErrorMessage="passwords not same" ForeColor="Red">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Confirm Password not filled" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address :</td>
                <td>
                    <asp:TextBox ID="txtAdress" runat="server" Rows="5" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email :</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email not filled " ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email not correct" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSignup" runat="server" OnClick="btnSignup_Click" Text="SignUp" Width="100px" />
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" OnClick="btnCancel_Click" Text="Cancel" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
