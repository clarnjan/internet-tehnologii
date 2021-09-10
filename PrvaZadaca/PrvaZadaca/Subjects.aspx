<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="PrvaZadaca.Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="resetSemester" runat="server" Text="Reset Semester" OnClick="resetSemester_Click" />
        </div>
        <div>
            <asp:ListBox ID="subjectList" runat="server">
                <asp:ListItem Value="6">SP</asp:ListItem>
                <asp:ListItem Value="6">DM1</asp:ListItem>
                <asp:ListItem Value="6">DM2</asp:ListItem>
                <asp:ListItem Value="7">OOP</asp:ListItem>
                <asp:ListItem Value="6">GIS</asp:ListItem>
                <asp:ListItem Value="5">KI</asp:ListItem>
                <asp:ListItem Value="8">VIS</asp:ListItem>
                <asp:ListItem Value="7">SI</asp:ListItem>
            </asp:ListBox>
            <asp:ListBox ID="selectedSubjects" runat="server" SelectionMode="Multiple"></asp:ListBox>
        </div>
        <div>
            <asp:Button ID="addSubject" runat="server" Text="Add subject" OnClick="addSubject_Click" />
        </div>
        <div>
            <asp:Button ID="register" runat="server" Text="register" OnClick="register_Click1" />
        </div>
    </form>
</body>
</html>
