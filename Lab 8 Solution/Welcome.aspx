<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Lab_8_Solution.Welcome" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Netanel Abutbul Targil4 | Welcome</title>
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

        input#ButtonWelcome {
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
        <div>
            User Name: <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            Last Entered: <asp:Label ID="lblLastEntered" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            Password: <asp:Label ID="lblPassword" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:booksConnectionString %>" ProviderName="<%$ ConnectionStrings:booksConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Publishers] ORDER BY [publisherID]">
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="publisherName" DataValueField="publisherID">
        </asp:DropDownList>
        <asp:Button ID="ButtonWelcome" runat="server" OnClick="ButtonWelcome_Click" Text="Submit" Width="122px" />
    </form>
</body>
</html>
