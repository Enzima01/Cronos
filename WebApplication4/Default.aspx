<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style>
        /* Estilos para o container do slider */
        .slider-container {
            margin: 0;
            padding: 0;
            border: none;
            overflow: hidden;
            max-width: 100%;
            height: auto;
        }

        /* Estilos para o slider (interno) */
        .flexslider {
            margin: 0;
            padding: 0;
            background-color: transparent;
            height: 100%;
        }

        .flex-viewport {
            overflow: hidden;
            position: relative;
            height: 100%;
        }

        .flex-direction-nav a {
            z-index: 10;
        }

        .flex-control-nav {
            z-index: 10;
        }

        .flex-active-slide {
            z-index: 20;
        }

        .flex-next {
            left: auto !important;
            right: -100% !important;
        }

        .flex-prev {
            left: -100% !important;
            right: auto !important;
        }

        .flex-animating .flex-next {
            right: 0% !important;
        }

        .flex-animating .flex-prev {
            left: 0% !important;
        }

        .flex-direction-nav .flex-disabled {
            opacity: 0 !important;
            cursor: default;
        }

        .flexslider .slides > li {
            display: none;
            -webkit-backface-visibility: hidden;
            height: 100%; /* Garante que o LI ocupe toda a altura do slider */
        }

        .flexslider .slides img {
            width: 100%;
            height: 100%; /* Força a imagem a ter a mesma altura do LI */
            display: block;
            object-fit: cover;
            object-position: center center;
            margin-top: 0; /* Remove a margem superior */
        }

        /* Estilos para a row e colunas */
        .row {
            display: flex;
            flex-wrap: wrap;
            margin-top: 60px;
            padding: 0 20px;
            position: relative; /* Importante para o posicionamento absoluto do retângulo */
        }

        .col-3 {
            width: calc(25% - 20px);
            margin-right: 20px;
            margin-bottom: 20px;
            box-sizing: border-box;
            background-color: #f5f5f5; /* Cor de fundo */
            border-radius: 20px; /* Bordas arredondadas */
            border: none;
        }

        .col-3:last-child {
            margin-right: 0;
        }

        .box {
            border: none;
            display: flex;
            flex-direction: column;
            border-radius: 20px; /* Bordas arredondadas */
            overflow: hidden; /* Garante que a imagem e o conteúdo respeitem o border-radius */
            height: 100%; /* Garante que a box ocupe toda a altura da col-3 */
            display: flex;
            flex-direction: column; /* Organiza o conteúdo da box verticalmente */
        }

        .box img {
            width: 100%;
            display: block;
            margin-bottom: 10px;
            border-radius: 20px 20px 0 0;
            border: none;
        }

        .padding-14 {
            padding: 14px;
            position: relative; /* Cria um contexto de posicionamento para o link */
        }

        .padding-14 h2 {
            margin-top: 0;
        }

        .padding-14 asp-hyperlink {
            position: absolute; /* Permite posicionar o link relativamente ao .padding-14 */
            left: 50%; /* Move o centro do link para o centro da div */
            transform: translateX(-50%); /* Centraliza o link horizontalmente */
            bottom: 25px; /* Posiciona a 25px da parte inferior */
            text-decoration: none; /* Remove o sublinhado */
            color: #ff007f; /* Define a cor do texto para rosa */
            display: block; /* Garante que ocupe a largura necessária para o texto */
            width: fit-content; /* Ajusta a largura ao conteúdo */
        }

        .div-meio {
            /* Mesmo design do col-3 */
            width: calc(25% - 20px);
            margin-right: 20px;
            margin-bottom: 20px;
            box-sizing: border-box;
            background-color: #f5f5f5; /* Cor de fundo */
            border-radius: 20px; /* Bordas arredondadas */
            border: 2px solid #ff007f;
        }

        .pink-rectangle {
            background-color: #ff007f;
            width: 130px;
            height: auto;
            border-radius: 5px;
            position: absolute;
            top: -18px; /* Mantém a posição acima */
            left: 50%; /* Centraliza horizontalmente */
            transform: translateX(-50%); /* Ajusta para o centro do elemento */
            color: #121212;
            padding: 1%;
            text-align: center;
            box-sizing: border-box;
            font-weight: bold;
            font-size: 12px;
        }

        /* Media queries */
        @media (max-width: 1200px) {
            .col-3 {
                width: calc(33.333% - 20px);
            }

            .col-3:nth-child(3n) {
                margin-right: 0;
            }

            .div-meio {
                width: calc(33.333% - 20px);
            }

            .pink-rectangle {
                right: calc(33.333% - 20px + 20px); /* Ajuste para telas médias */
            }
        }

        @media (max-width: 992px) {
            .col-3 {
                width: calc(50% - 20px);
            }

            .col-3:nth-child(2n) {
                margin-right: 0;
            }

            .div-meio {
                width: calc(50% - 20px);
            }

            .pink-rectangle {
                right: calc(50% - 20px + 20px); /* Ajuste para telas menores */
            }
        }

        @media (max-width: 768px) {
            .col-3 {
                width: 100%;
                margin-right: 0;
            }

            .div-meio {
                width: 100%;
                margin-right: 0;
            }

            .pink-rectangle {
                right: 20px; /* Ajuste para mobile */
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="slider-container">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="Images/Frame 1.png" alt="controle" />
                </li>
                <li class="">
                    <img src="Images/Frame 2.png" alt="Banner HTML" />
                </li>
                <li>
                    <img src="Images/Frame 3.png" alt="Banner Python" />
                </li>
                <li>
                    <img src="images/Frame 4.png" alt="Banner Java" />
                </li>
            </ul>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.2/jquery.flexslider.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.2/flexslider.min.css">

    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                slideshowSpeed: 5000,
            });
        });
    </script>

    <div class="row margin-top-60">
        <div class="col-3">
            <div>
                <div class="padding-14" style="padding: 15%">
                    <h2>Premium</h2>
                    <br />
                        -Número ilimitado de funcionários<br />
                        -Suporte sem custos adicionais<br />
                        -Sistema de horas extras<br />
                        -Sistema de horas à descontar<br />
                        -Canal de comunicação interno<br>
                        -IA analista de currículos<br>
                        -Bot de auto-atendimento para whatsapp<br>
                        -Controle de entrada e saída<br />
                    <p style="font-size: 30px; color: #1e1e1e;font-weight: bold">R$ 149</p>
                    <asp:HyperLink ID="HyperLink3" style="color: #ff007f; text-decoration: none;" NavigateUrl="~/ContratarPremium.aspx" runat="server">Contratar</asp:HyperLink>
                </div>
            </div>
        </div>
        <div class="col-3 div-meio">
            <div>
                <div class="padding-14" style="padding:15%">
                    <h2>Essencial</h2>
                    <br />
                            -Controle de 1-10 funcionários<br />
                            -Suporte sem custos adicionais<br />
                            -Sistema de horas extras<br />
                            -Canal de comunicação interno<br />
                            -Controle de entrada e saída<br />
                            <p style="font-size: 30px; color: #ff007f;font-weight: bold">R$ 99</p>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            
                    <asp:HyperLink ID="HyperLink2" style="color: #ff007f; text-decoration: none;" NavigateUrl="~/ContratarEssencial.aspx" runat="server">Contratar</asp:HyperLink>
                </div>
            </div>
            <div class="pink-rectangle">Custo Benefício</div>
        </div>
        <div class="col-3">
            <div>
                <div class="padding-14" style="padding: 15%">
                    <h2>Básico</h2>
                    <br />
                        -Controle de 1-3 funcionários<br />
                        -Suporte com custos adicionais<br />
                        -Canal de comunicação interno<br />
                        -Controle de entrada e saída<br />
                        <p style="font-size: 30px; color: #1e1e1e;font-weight: bold">R$ 69</p>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    <asp:HyperLink ID="HyperLink1" style="color: #ff007f; text-decoration: none; " NavigateUrl="~/ContratarBasico.aspx" runat="server">Contratar</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</asp:Content>