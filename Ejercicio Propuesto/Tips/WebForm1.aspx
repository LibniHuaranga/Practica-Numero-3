<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Tips.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DISPOSICIÓN DE 3 COLUMNAS, CABECERA Y PIE</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div id="contenedor">
        <div id="cabecera">
            <h1>Menu Principal</h1>
        </div>
        <div id="columna1">
            <p>
                Links<asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="url" DisplayMode="HyperLink" Height="19px" OnClick="BulletedList1_Click1" Width="136px">
                        <asp:ListItem Value="http://www.microsoft.com">Microsoft</asp:ListItem>
                    </asp:BulletedList>
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/hyperlinks.xml"></asp:XmlDataSource>
                    <br />
            <br />
            <br />
            <br />
        </div>
        <div id="columna3">
            <p>
                Este menu sirve para poder registrar los datos de tu producto, los datos como proveedor o los datos de Cliente</p>
        </div>
        <div id="columna2">
            <h2>Menu de registro</h2>
            <p style="width: 517px">
                &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">Producto</asp:ListItem>
                <asp:ListItem Value="1">Cliente</asp:ListItem>
                <asp:ListItem Value="2">Proveedor</asp:ListItem>
            </asp:RadioButtonList>
            </p>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="INGRESE SU PRODUCTO"></asp:Label>
                    <br />
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Upload" />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="INGRESE LA INFORMACION DEL CLIENTE"></asp:Label>
                    <br />
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Upload" />
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server">HyperLink</asp:HyperLink>
                    <br />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="INGRESE LA INFORMACION DEL VENDEDOR"></asp:Label>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                    <br />
                </asp:View>
            </asp:MultiView>
        </div>
        <div id="pie">
            Menu @Vendedores</div>
    </div>
        <div style="width: 900px">
                    <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
