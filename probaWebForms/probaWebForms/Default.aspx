<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="probaWebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button ID="btnVtoraStrana" runat="server" Text="Vtora strana" OnClick="btnVtoraStrana_Click" />
    <asp:Label ID="Label1" runat="server" Text="Vnesi prv broj"></asp:Label>
    <asp:TextBox ID="txtBroj1" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Vnesi vtor broj"></asp:Label>
    <asp:TextBox ID="txtBroj2" runat="server"></asp:TextBox>
    <asp:Button ID="btnSoberi" runat="server" Text="Soberi" OnClick="btnSoberi_Click" />
    <asp:Label ID="lblRezultat" runat="server" Text="0"></asp:Label>
</asp:Content>
