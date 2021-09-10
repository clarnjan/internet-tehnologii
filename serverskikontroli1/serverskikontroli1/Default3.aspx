<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="serverskikontroli1.Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtPoraka" runat="server" AutoPostBack="True" OnTextChanged="txtPoraka_TextChanged" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="btnProveri" runat="server" OnClick="btnProveri_Click" Text="Button" />
        <asp:Button ID="btnPrvaStrana" runat="server" Enabled="False" OnClick="btnPrvaStrana_Click" Text="Button" />
    </form>
</body>
</html>
