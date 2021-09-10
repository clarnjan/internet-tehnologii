<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="serverskikontroli1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="lblVreme1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" Text="Kонтрола за приказ на време"></asp:Label>
    <asp:Label ID="lblVreme2" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" Text="Kонтрола за приказ на време"></asp:Label>
    <asp:Button ID="btnVreme1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" Text="Kонтрола за приказ на време" OnClick="btnVreme1_Click" />  
    <asp:HyperLink ID="hlSledno" runat="server" NavigateUrl="~/Default2.aspx">Sledno</asp:HyperLink>
</asp:Content>
