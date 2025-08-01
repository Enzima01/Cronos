<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication4.Contato" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row margin-top-60">
        <div class="col-6">
            <div class="box border padding-14 margin-right-20" style="background-color: #121212; padding: 5%; border-radius: 20px; border: none;">
                <h2 style="display:flex; justify-content: center; color: #f5f5f5">Fale Conosco</h2>
                <br />
                <asp:Label ID="Alerta" runat="server" Forecolor="Red" Font-Size="16px"></asp:Label>
                <br />
                <label style="color: #f5f5f5;">Seu Nome</label>
                <asp:TextBox ID="Nome" runat="server" style="background-color:#1e1e1e; color:#f5f5f5;"></asp:TextBox>
               <label style="color: #f5f5f5;">E-mail</label>
                <asp:TextBox ID="Email" runat="server" style="background-color:#1e1e1e; color:#f5f5f5;"></asp:TextBox>
                <label style="color: #f5f5f5;">Mensagem</label>
                <asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="6" MaxLength="255" runat="server" style="background-color:#1e1e1e; color:#f5f5f5;"></asp:TextBox>
                <div class="enviar-container" style="display: flex;justify-content: center;">
                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar"
                        style="background-color: #ff007f; color: white; padding: 10px 20px; border: none; cursor: pointer; font-size: 16px; border-radius: 3px; transition: background-color 0.3s ease;"
                        onmouseover="this.style.backgroundColor='#ff59ac';"
                        onmouseout="this.style.backgroundColor='#ff007f';" />
                </div>
            </div>
        </div>
        <div class="col-6">
            <div style="width:1200px; padding:5%; background-color:#121212; border-radius: 20px">
            <iframe style="border: 1px solid #f5f5f5; border-radius:5px;" src="https://www.google.com/maps/embed?pb=!4v1746234617985!6m8!1m7!1sPkK0Wegz4TH2tD6zcqULXQ!2m2!1d-22.7343566824809!2d-47.31706651516271!3f256.8973!4f0!5f0.7820865974627469" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe</div>
        </div>
    </div>
</asp:Content>