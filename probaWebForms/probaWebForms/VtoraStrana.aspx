<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VtoraStrana.aspx.cs" Inherits="probaWebForms.VtoraStrana" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Button" Enabled="false"/>
        </div>
    </form>
</body>
</html>
