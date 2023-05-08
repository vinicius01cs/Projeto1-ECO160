<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Inicio</title>
</head>
<body>
<div>
    <nav class="menu">
        <ul>
            <li><a href="/">Inicio</a></li>
            <li><a href="/professores">Professores</a></li>
            <li><a href="/disciplinas">Disciplinas</a></li>
            <li><a href="/chaves">Emprestimos de chaves</a></li>
        </ul>
    </nav>
</div>

<div class="divTitulo">
    <h1 class="titulo">Trabalho Prático - ECO160</h1>
    <h2>Linguagens de Programação e Compiladores</h2>
    <p>

    </p>
    <a href="https://github.com/vinicius01cs/Projeto1-ECO160"><img src="/imagens/gitHub.png"></a>
</div>
<div class="divTecnologias">
    <p class="titulos">Tecnologias Utilizadas</p>
    <nav class="imagensTec">
        <ul>
            <li>
                <img src="/imagens/frontend.png" alt="HTML, CSS e Javascript">
                <p>Frontend</p>
            </li>
            <li>
                <img src="/imagens/H2.png" alt="Banco de dados - H2" >
                <p>Banco de dados</p>
            </li>
        </ul>
        <ul>
            <li>
                <img src="/imagens/kotlin.png" alt="Kotlin">
                <p>Backend</p>
            </li>
            <li>
                <img src="/imagens/ktor.png" alt="Ktor">
                <p>Framework</p>
            </li>
        </ul>
    </nav>
</div>
<div class="divMembros">
    <p class="titulos">Membros</p>
    <div class="integrante">
        <p style="font-size: 25px">Vinicius Campos</p>
        <p style="font-size: 20px">Matricula: 21083</p>
    </div>
    <div class="integrante">
        <p style="font-size: 25px">Davi Viana</p>
        <p style="font-size: 20px">Matricula: 20789</p>
    </div>
    <div class="integrante">
        <p style="font-size: 25px">Katia Souza</p>
        <p style="font-size: 20px">Matricula:</p>
    </div>
</div>
</body>

<style>
    body {
        margin: 0;
        background-color: #f8f8f8;
    }
    nav.menu {
        position: static;
        width: 100%;
        background-color: #f0f2e9;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    }

    .menu ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .menu li {
        display: inline-block;
    }

    .menu a {
        display: block;
        padding: 10px;
        text-decoration: none;
        color: #333;
    }

    .menu a:hover {
        background-color: #807675;
        color: #f8efea;
    }

    .divTitulo{
        display: inline-block;
        background-color: #807675;
        width: 100%;
        text-align: center;
        color: #f8efea;
    }
    .divTecnologias{
        display: inline-block;
        background-color: #f8f8f8;
        width: 100%;
        text-align: center;
    }
    .divMembros{
        display: inline-block;
        width: 100%;
        background-color: #0f020a;
        text-align: center;
        color: #f0f2e9;
    }
    .titulos{
        font-size: 40px;
    }
    nav.imagensTec{
        position: static;
        width: 100%;
    }
    .imagensTec ul{
        list-style: none;
        margin: 0;
        padding: 0;
    }
    .imagensTec li{
        display: inline-block;
        padding: 10px;
    }
    .imagensTec p{
        font-size: 15px;
    }
    .integrante{
        text-align: left;
        border-color: #f0f2e9;
        border-bottom-style: solid;
    }
    .integrante p{
        margin-left: 20px;
    }
</style>
</html>