<#-- @ftlvariable name="chaves" type="kotlin.collections.List<com.example.models.Chave>" -->
<#import "_layout.ftl" as layout />
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Emprestimos</title>
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
    <h1 class="titulo">Emprestimos de chaves</h1>
    <table class="tabela">
        <tr>
            <th>Cod. Empréstimo</th>
            <th>Nome Profeessor</th>
            <th>CPF Professor</th>
            <th>Data Emprestimo</th>
            <th>Data Devolução</th>
            <th></th>
            <th></th>
        </tr>
        <#list chaves?reverse as chave>
            <tr>
                <td>${chave.id}</td>
                <td>${chave.profNome}</td>
                <td>${chave.profCpf}</td>
                <td>${chave.dataEmprestimo}</td>
                <td>${chave.dataDevolucao}</td>
                <td><a href="/chaves/${chave.id}/edit">Editar</a></td>
                <td>
                    <form action="/chaves/${chave.id}" method="post">
                        <p>
                            <input type="submit" name="_action" value="Excluir">
                        </p>
                    </form>
                </td>
            </tr>
        </#list>
    </table>
    <a href="/chaves/new" class="botao">Novo empréstimo</a>
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