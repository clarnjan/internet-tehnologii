<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ServerskiKontroli2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <table class="nav-justified" style="height: 519px; margin-bottom: 39px">
    <tr>
        <td style="width: 257px; height: 24px">Име</td>
        <td style="height: 24px; width: 303px">
            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
        </td>
        <td rowspan="11">
            <asp:Panel ID="Panel1" runat="server" style="margin-top: 0px" Visible="False">
            <asp:Label style="height: 24px; width: 303px" ID="Label2" runat="server" Text="Почитуван патнику "></asp:Label>
            <br />
            <asp:Label style="height: 24px; width: 303px" ID="lblPatnik" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Издадена ви е карта за "></asp:Label>
            <br />
            <asp:Label ID="lblSredstvo" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Со почетна дестинација "></asp:Label>
            <br />
            <asp:Label ID="lblOd" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="И крајна дестинација "></asp:Label>
            <br />
            <asp:Label ID="lblDo" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Времето на поаѓање е "></asp:Label>
            <br />
            <asp:Label ID="lblVreme" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Вашето место ќе биде во зоната за "></asp:Label>
            <asp:Label ID="lblZona" runat="server"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text="во"></asp:Label>
            <asp:Label ID="lblKlasa" runat="server"></asp:Label>
            <asp:Label ID="Label13" runat="server" Text="класа"></asp:Label>
            <br />
            <asp:Label ID="Label14" runat="server" Text="И во текот на патувањето ќе бидете послужени со "></asp:Label>
            <asp:Label ID="lblPosluga" runat="server"></asp:Label>
            <br />
            <asp:Image ID="imgSlika" runat="server" />
            <br />
            <asp:Label ID="Label15" runat="server" Text="Ви благодариме на довербата и ви посакуваме среќен пат!"></asp:Label>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 24px;">Презиме</td>
        <td style="width: 303px; height: 24px;">
            <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 24px;">Од</td>
        <td style="width: 303px; height: 24px;">
            <asp:DropDownList ID="ddlOd" runat="server">
                <asp:ListItem>Skopje</asp:ListItem>
                <asp:ListItem>Viena</asp:ListItem>
                <asp:ListItem>Blatec</asp:ListItem>
                <asp:ListItem>Peking</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>London</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 24px;">До</td>
        <td style="width: 303px; height: 24px;">
            <asp:DropDownList ID="ddlDo" runat="server">
                <asp:ListItem>Skopje</asp:ListItem>
                <asp:ListItem>Viena</asp:ListItem>
                <asp:ListItem>Blatec</asp:ListItem>
                <asp:ListItem>Peking</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>London</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 24px;">Датум на тргнување</td>
        <td style="width: 303px; height: 24px;">
            <asp:DropDownList ID="ddlDen" runat="server" >
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMesec" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlGodina" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 24px;">Време на тргнување</td>
        <td style="width: 303px; height: 24px;">
            <asp:DropDownList ID="ddlVreme" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 24px;">Превозно средство</td>
        <td style="width: 303px; height: 24px;">
            <asp:ListBox ID="lstSredstvo" runat="server" Height="37px">
                <asp:ListItem Value="~/airplane.jpg">Авион</asp:ListItem>
                <asp:ListItem Value="~/train.jpg">Воз</asp:ListItem>
            </asp:ListBox>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 24px;">Зона</td>
        <td style="width: 303px; height: 24px;">
            <asp:RadioButtonList ID="rblZona" runat="server">
                <asp:ListItem>Пушачи</asp:ListItem>
                <asp:ListItem>Непушачи</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 25px;">Класа</td>
        <td style="width: 303px; height: 25px;">
            <asp:RadioButtonList ID="rblKlasa" runat="server">
                <asp:ListItem>Економска</asp:ListItem>
                <asp:ListItem>Бизнис</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 25px;">Послуга</td>
        <td style="width: 303px; height: 25px;">
            <asp:CheckBoxList ID="cblPosluga" runat="server">
                <asp:ListItem>Пијалок</asp:ListItem>
                <asp:ListItem>Кафе</asp:ListItem>
                <asp:ListItem>Оброк</asp:ListItem>
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td style="width: 257px; height: 25px;"></td>
        <td style="width: 303px; height: 25px;">
            <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
        </td>
    </tr>
</table>



</asp:Content>
