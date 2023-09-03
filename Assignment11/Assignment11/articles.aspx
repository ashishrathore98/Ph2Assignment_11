<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articles.aspx.cs" Inherits="Assignment11.articles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 367px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Articles
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="LblMsg" runat="server"></asp:Label>
                    <asp:GridView ID="gvArticles" runat="server">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td id="gvArticles" class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ArticleDbConnectionString %>" DeleteCommand="DELETE FROM [Articles] WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))" InsertCommand="INSERT INTO [Articles] ([ArticleId], [Title], [Content], [PublishDate]) VALUES (@ArticleId, @Title, @Content, @PublishDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ArticleDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Articles]" UpdateCommand="UPDATE [Articles] SET [Title] = @Title, [Content] = @Content, [PublishDate] = @PublishDate WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ArticleId" Type="Int32" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Content" Type="String" />
                            <asp:Parameter Name="original_PublishDate" Type="DateTime" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ArticleId" Type="Int32" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Content" Type="String" />
                            <asp:Parameter Name="PublishDate" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Content" Type="String" />
                            <asp:Parameter Name="PublishDate" Type="DateTime" />
                            <asp:Parameter Name="original_ArticleId" Type="Int32" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Content" Type="String" />
                            <asp:Parameter Name="original_PublishDate" Type="DateTime" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</body>
</html>
