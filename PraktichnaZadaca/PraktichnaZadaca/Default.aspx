<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PraktichnaZadaca._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="Label1" width="150px" runat="server" Text="Име"></asp:Label>
        <asp:TextBox ID="tbIme" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внеси име!"
            ControlToValidate="tbIme" ForeColor="Red" Display="None"
            ></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label2" width="150px" runat="server" Text="Презиме"></asp:Label>
        <asp:TextBox ID="tbPrezime" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внеси презиме!"
            ControlToValidate="tbPrezime" ForeColor="Red" Display="None"
            ></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label3" width="150px" runat="server" Text="Финки ID"></asp:Label>
        <asp:TextBox ID="tbID" runat="server" CausesValidation="true" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалиден формат на ID"
            ControlToValidate="tbID" ForeColor="Red" ValidationExpression="([A-Z]|[0-9])*(_\d\d)?([A-Z]|[0-9])*" Display="None"
            ></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Внеси ID!"
            ControlToValidate="tbID" ForeColor="Red" Display="None"
            ></asp:RequiredFieldValidator>
        <asp:Label ID="Label6" width="150px" runat="server" Text="@finki.ukim.mk"></asp:Label>
    </div>
        <asp:Label ID="Label7" runat="server" style="margin-left:100px" class="ml-2" Text="може да ги содржи знаците a-z, 0-9,_ и максимум една точка" Font-Size="X-Small"></asp:Label>

    <div>
        <asp:Label ID="Label4" width="150px" runat="server" Text="Лозинка"></asp:Label>
        <asp:TextBox ID="tbLozinka" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Внеси лозинка!"
            ControlToValidate="tbLozinka" ForeColor="Red" Display="None"
            ></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label5" width="150px" runat="server" Text="Потврда"></asp:Label>
        <asp:TextBox ID="tbPotvrda" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Внеси потврда!"
            ControlToValidate="tbPotvrda" ForeColor="Red" Display="None"
            ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Различни лозинки"
            ControlToValidate="tbPotvrda" ControlToCompare="tbLozinka" ForeColor="Red"
            Type="String" Operator="Equal" Display="None"
            ></asp:CompareValidator>
    </div>
    
    <asp:ValidationSummary ID="validation" runat="server" ForeColor="Red" />

     <div>
        <asp:Label ID="Label8" width="150px" runat="server" Text="Адреса"></asp:Label>
        <asp:TextBox ID="tbAdresa" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
         ControlToValidate="tbAdresa" ForeColor="Red" 
             Text="Внеси адреса"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label9" width="150px" runat="server" Text="Телефон"></asp:Label>
        <asp:TextBox ID="tbTelefon" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Text="Неправилен формат"
            ControlToValidate="tbTelefon" ForeColor="Red" ValidationExpression="\+389\s(2\s\d{4}\s\d{3}|7\d\s\d{3}\s\d{3})" 
            ></asp:RegularExpressionValidator>
    </div>
        <asp:Label ID="Label10" width="150px" runat="server" Text="Пол:"></asp:Label>
        <asp:RadioButtonList ID="rblPol" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>М</asp:ListItem>
            <asp:ListItem>Ж</asp:ListItem>
        </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Избери пол"
        ControlToValidate="rblPol" ForeColor="Red" 
        ></asp:RequiredFieldValidator>
    <br />
        <asp:Label ID="Label11" width="150px" runat="server" Text="Датум на раѓање"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    
        <asp:Label ID="Label12" width="150px" runat="server" Text="Занимање"></asp:Label>
    <div>
        <asp:DropDownList ID="ddlZanimanje" runat="server">
            <asp:ListItem>-занимање-</asp:ListItem>
            <asp:ListItem>Професор</asp:ListItem>
            <asp:ListItem>Вработен</asp:ListItem>
            <asp:ListItem>Директор</asp:ListItem>
        </asp:DropDownList>
    </div>
        <asp:Label ID="Label14" width="150px" runat="server" Text="Години на вршење на избраната дејност"></asp:Label>
    <div>
        <asp:TextBox ID="tbGodini" runat="server"></asp:TextBox>
        <asp:Label ID="lblGodini" width="150px" runat="server" Text="Недозволена вредност" ForeColor="Red" Visible="False"></asp:Label>
    </div>
    <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
    <br />
</asp:Content>
