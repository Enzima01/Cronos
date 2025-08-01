<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContratarPremium.aspx.cs" Inherits="WebApplication4.ContratarPremium" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .centro-container {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            height: 480px;
            background-color: #f5f5f5;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 800px;
            margin: 0 auto;
        }

        .conteudo-box {
            border: 2px solid #C0C0C0;
            border-radius: 15px;
            margin-left: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 100%;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding: 30px 40px;
            box-sizing: border-box;
        }

        .conteudo-box h1 {
            margin: 0 0 20px 0;
            text-align: center;
        }

        .conteudo-box ul {
            list-style: disc;
            padding-left: 20px;
            font-size: 17px;
            text-align: left;
            width: 100%;
            margin-bottom: 20px;
        }

        .conteudo-box ul li {
            margin-bottom: 10px;
        }

        .conteudo-box h2 {
            margin: 0 0 20px 0;
            font-size: 26px;
            color: #333;
            text-align: center;
        }

        .botao-cadastrar {
            padding: 10px;
            border: none;
            border-radius: 8px;
            background-color: #ff007f;
            color: white;
            font-weight: bold;
            cursor: pointer;
            margin-top: -35px; /* Move o botão para cima */
        }

        .botao-cadastrar:hover {
            background-color: #903160;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="centro-container">
        <img src="images\contratarEssencial.png" alt="Plano Essencial" />
        <div class="conteudo-box">
            <h1 style="text-decoration: underline #C0C0C0; ">Plano Essencial</h1>
            <ul>
                <li>Controle de 1-10 funcionários</li>
                <li>Suporte sem custos adicionais</li>
                <li>Sistema de horas extras</li>
                <li>Canal de comunicação interno</li>
                <li>Controle de entrada e saída</li>
            </ul>
            <p style="text-decoration: underline 2px #ff007f; font-size:16px; font-weight: bold">Custo Benefício</p>
            <h2 style="margin-bottom: 50px; color: #ff007f">R$ 99,00</h2>
            <button class="botao-cadastrar">Contratar</button>
        </div>
    </div>
</asp:Content>
