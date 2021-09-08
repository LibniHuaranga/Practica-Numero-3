<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practica3_Experiencia1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Ctrl" runat="server" BorderStyle="Dashed" Text="Test Border"></asp:Label>
            <br />
            <asp:CheckBoxList ID="chklst" runat="server" OnSelectedIndexChanged="chklst_SelectedIndexChanged">
            </asp:CheckBoxList>
            <asp:Button ID="cmdOK" runat="server" OnClick="cmdOK_Click" Text="Ok" />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
