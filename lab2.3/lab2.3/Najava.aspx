<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="lab2._3.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server">Korisnik:</asp:Label>
            <asp:TextBox runat="server" ID="txtKorisnik"></asp:TextBox><br />
            <asp:Label runat="server">Lozinka:</asp:Label>
            <asp:TextBox runat="server" ID="txtLozinka" TextMode="Password"></asp:TextBox><br />
            <asp:Button runat="server" ID="btnPodnesi" Text="Podnesi" OnClick="btnPodnesi_Click" /><br />
            <asp:Label runat="server" ID="lblObidi" Visible="False">0</asp:Label>
        </div>
    </form>
</body>
</html>
