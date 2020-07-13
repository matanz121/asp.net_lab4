<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Titles.aspx.cs" Inherits="Lab_8_Solution.Titles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Netanel Abutbul Targil4 | Titles</title>
    <style>  
        form#form1 {
            width: fit-content;
            margin: 10px auto;
            box-shadow: 1px 2px 20px 0px #9E9E9E;
            padding: 15px;
            font-family: Levenim MT;
        }
        th{
            font-size:2rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" Height="193px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="392px">
                <Columns>                    
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:booksConnectionString %>" ProviderName="<%$ ConnectionStrings:booksConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Titles] WHERE ([publisherID] = ?)">
            <SelectParameters>
                <asp:CookieParameter CookieName="publisher" Name="publisherID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
