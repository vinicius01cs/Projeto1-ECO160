<#-- @ftlvariable name="disciplinas" type="kotlin.collections.List<com.example.models.Disciplina>" -->
<#import "_layout.ftl" as layout />
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Disciplinas</title>
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
    <h1 class="titulo">Disciplinas</h1>
    <table class="tabela">
        <tr>
            <th>Id</th>
            <th>Cod. Disciplina</th>
            <th>Local</th>
            <th>Nome Professor</th>
            <th>CPF Professor</th>
            <th>Editar</th>
            <th>Excluir</th>
        </tr>
        <#list disciplinas?reverse as disciplina>
            <tr>
                <td>${disciplina.id}</td>
                <td>${disciplina.codDisciplina}</td>
                <#if !disciplina.local>
                    <td>Laboratorio</td>
                <#else>
                    <td>Sala</td>
                </#if>
                <td>${disciplina.nomeProf}</td>
                <td>${disciplina.cpfProf}</td>
                <td><a href="/disciplinas/${disciplina.id}/edit">Editar</a></td>
                <td>
                    <form action="/disciplinas/${disciplina.id}" method="post">
                        <p>
                            <input type="submit" name="_action" value="Excluir">
                        </p>
                    </form>
                </td>
            </tr>
        </#list>
    </table>
    <a href="/disciplinas/new" class="botao">Nova Disciplina</a>
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
    .botao{
        background-color: #286655;
        border: none;
        color: #f8efea;
        padding: 16px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-left: 20px;
        margin-top: 10px;
        margin-right: 7px;
        transition-duration: 0.4s;
        cursor: pointer;
    }

    .botao:hover{
        background-color: #98a587;
        color: #0f020a;
    }
</style>
</html>