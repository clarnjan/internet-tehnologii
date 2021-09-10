<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="PrvaZadaca.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Задолжително" ControlToValidate="txtIme"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Задолжително" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Невалиден формат" ControlToValidate="txtEmail" ValidationExpression="(\w|\d)(\w|\d)*@\w\w*\.\w*"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:TextBox ID="txtLozinka" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="минимум 6 карактери"
                ValidationExpression="(\w|\d|\s){6,}" ControlToValidate="txtLozinka" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="мора до содржи бројка"
                ValidationExpression=".*\d.*" ControlToValidate="txtLozinka"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:TextBox ID="txtPotvrda" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPotvrda" ControlToCompare="txtLozinka" 
                ErrorMessage="Лозинките мора да бидат исти"></asp:CompareValidator>
        </div>
        <div>
            <asp:Button ID="btnCreate" runat="server" Text="Kreiraj nova smetka" type="submit" OnClick="btnCreate_Click" />
        </div>
    </form>
</body>
</html>
