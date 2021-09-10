<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="serverskikontroli1.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">1
            <asp:Table align="center" ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:CheckBox ID="chbVidlivo" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Видливо" AutoPostBack="True" Checked="True" />
                        <asp:Panel ID="pnlPanela" runat="server" BorderColor="#33CC33" Font-Names="Arial" Font-Size="Medium">
                            <asp:TextBox ID="txtOperand1" runat="server" EnableViewState="False"></asp:TextBox>
                            <asp:TextBox ID="txtOperand2" runat="server" OnTextChanged="txtOperand2_TextChanged" AutoPostBack="True"></asp:TextBox>
                            <asp:Button ID="btnSoberi" runat="server" Text="Button" onClick="btnSoberi_Click"/>
                            <asp:Label ID="lblRezultat" runat="server" Text="Label" EnableViewState="False"></asp:Label>
                        </asp:Panel>

                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
    </form>
</body>
</html>
