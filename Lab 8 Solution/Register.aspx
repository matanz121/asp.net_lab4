<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lab_8_Solution.Register" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Netanel Abutbul Targil4 | Register</title>
    <style>
        form#form1 {
            width: 50%;
            margin: 50px auto;
            box-shadow: 1px 2px 20px 0px #9E9E9E;
            padding: 15px;
            font-family: Levenim MT;
        }

        select#DropDownList1 {
            padding: 5px 10px;
            font-size: 15px;
        }

        input#Button1 {
            background: white;
            border: solid 1px black;
            padding: 5px 10px;
            margin: 20px 0 0 0;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:booksConnectionString %>" ProviderName="<%$ ConnectionStrings:booksConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Users] ORDER BY [loginID]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="loginID" DataValueField="password">
        </asp:DropDownList>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must have a value" ControlToValidate="txtUserName"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must have a value" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email" ValidationExpression="\S+@\S+\.\S+" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Must have a value" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Must have a value" ControlToValidate="txtConfPassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Should be the same as password" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword"></asp:CompareValidator>
                </td>
            </tr>
            <tr>    
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
    </div>
        <p>
            <asp:Label ID="LabelResult" runat="server" Text="Label">please sign in.</asp:Label>
        </p>
    </form>
</body>
</html>
