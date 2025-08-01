<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirLog.aspx.cs" Inherits="WebApplication4.ExibirLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div>
        <h1 style="width:auto; margin-bottom: 25px; margin-top: 100px;">Registro de Logs</h1>
        <div style="height: 80%; width: 70%; border-radius: 3px;">
            <asp:Label ID="Log" runat="server" Text=""></asp:Label>
            <asp:Button style="height: auto; width: 100px; background-color: #ff007f;color:#f5f5f5; color: white; padding: 10px 20px; border: none; cursor: pointer; font-size: 16px; border-radius: 3px;" ID="Limpar" OnClick="Limpar_Click" runat="server" Text="Limpar"/>
        </div>
    </div>
</asp:Content>
