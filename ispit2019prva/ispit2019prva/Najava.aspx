<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="ispit2019prva.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ime"></asp:Label>
            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfv1" runat="server" ControlToValidate="txtIme" ForeColor="Red"
                ErrorMessage="Внесете име" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtIme" ForeColor="Red"
                ErrorMessage="Невалиден формат" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Lozinka"></asp:Label>
            <asp:TextBox ID="txtLozinka" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfv2" runat="server" ControlToValidate="txtLozinka" ForeColor="Red"
                ErrorMessage="Внесете лозинка" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="txtLozinka" ForeColor="Red"
                ErrorMessage="Невалиден формат" ValidationExpression="(\d|\w){6,}"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="E-Mail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfv3" runat="server" ControlToValidate="txtEmail" ForeColor="Red"
                ErrorMessage="Внесете е-маил" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev3" runat="server" ControlToValidate="txtEmail" ForeColor="Red"
                ErrorMessage="Невалиден формат" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <asp:Button ID="btnNajava" runat="server" Text="Najavete se" OnClick="btnNajava_Click" />
    </form>
</body>
</html>
