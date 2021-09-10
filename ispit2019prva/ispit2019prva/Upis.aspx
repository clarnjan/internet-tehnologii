<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upis.aspx.cs" Inherits="ispit2019prva.Upis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upis</title>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            height: 165px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <p>
            <img alt="" class="auto-style1" src="file:///C:/Users/Damjan/source/repos/ispit2019prva/ispit2019prva/logo_finki.png" /></p>
            <asp:CheckBox ID="chbPrivatna" runat="server" Text="Privatna kvota" />
            <br />
            <asp:ListBox ID="lstPredmeti" runat="server" OnSelectedIndexChanged="lstPredmeti_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Verojatnost i statistika</asp:ListItem>
                <asp:ListItem>Internet tehonologii</asp:ListItem>
                <asp:ListItem>Korisnicki interfejsi</asp:ListItem>
            </asp:ListBox>
            <asp:ListBox ID="lstProfesori" runat="server"></asp:ListBox>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Izberi" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Zapishi" />
        <asp:Label ID="lblKorisnik" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
