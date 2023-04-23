<#import "_layout.ftl" as layout />

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Inicio</title>
</head>
<body>
<div>
    <nav>
        <ul>
            <li><a href="/">Inicio</a></li>
            <li><a href="/professores">Professores</a></li>
            <li><a href="/disciplinas">Disciplinas</a></li>
            <li><a href="/chaves">Emprestimos de chaves</a></li>
        </ul>
    </nav>
</div>
<div>
    <h1>Trabalho Prático - ECO160</h1>
    <h3>Linguagens de Programação e Compiladores</h3>
</div>
</body>

<style>
    nav {
        position: fixed;
        top: 0;
        width: 100%;
        background-color: #fff;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    }

    nav ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    nav li {
        display: inline-block;
    }

    nav a {
        display: block;
        padding: 10px;
        text-decoration: none;
        color: #333;
    }

    nav a:hover {
        background-color: #f2f2f2;
    }

</style>

</html>