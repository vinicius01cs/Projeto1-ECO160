<#-- @ftlvariable name="professores" type="kotlin.collections.List<com.example.models.Professor>" -->
<#import "_layout.ftl" as layout />
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Professores</title>
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

    <h1 class="titulo">Professores</h1>
    <table class="tabela">
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>CPF</th>
            <th>Editar</th>
            <th>Deletar</th>
        </tr>
        <#list professores?reverse as professor>
            <tr>
                <td>${professor.id}</td>
                <td>${professor.nome}</td>
                <td>${professor.cpf}</td>
                <td><a href="/professores/${professor.id}/edit">Editar</a></td>
                <td><a href="/professores/${professor.id}">Deletar</a></td>
            </tr>
        </#list>
    </table>
    <a href="/professores/new" class="botao">Novo</a>
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
    .titulo{
        text-align: center;
    }
    .tabela{
        border-collapse: collapse;
        width: 100%;
    }
    .tabela td, .tabela th{
        border: 1px solid #ddd;
        padding: 8px;
    }
    .tabela tr:nth-child(even){
        background-color: #f2f2f2;
    }

    .tabela tr:hover {background-color: #ddd;}

    .tabela th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #807675;
        color: #f8efea;
    }
    .botao {
        background-color: #807675;
        border: none;
        color: #f8efea;
        padding: 16px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        transition-duration: 0.4s;
        cursor: pointer;
    }

    .botao:hover{
        background-color: #0f020a;
        color: #f8efea;
    }
</style>
</html>