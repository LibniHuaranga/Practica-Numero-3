<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Tips.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <hr />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">BulletedList</asp:ListItem>
                <asp:ListItem Value="1">File Upload</asp:ListItem>
            </asp:RadioButtonList>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="url" DisplayMode="HyperLink" Height="19px" OnClick="BulletedList1_Click1" Width="136px">
                        <asp:ListItem Value="http://www.microsoft.com">Microsoft</asp:ListItem>
                    </asp:BulletedList>
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/hyperlinks.xml"></asp:XmlDataSource>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                </asp:View>
            </asp:MultiView>
            <br />
            <hr />
        </div>
    </form>
</body>
</html>
