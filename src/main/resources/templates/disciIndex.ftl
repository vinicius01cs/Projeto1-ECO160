<#-- @ftlvariable name="disciplinas" type="kotlin.collections.List<com.example.models.Disciplina>" -->
<#import "_layout.ftl" as layout />
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Disciplinas</title>
</head>
<body style="text-align: center; font-family: sans-serif">
<h1>Disciplinas</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Cod. Disciplina</th>
        <th>Local</th>
        <th>Nome Professor</th>
        <th>CPF Professor</th>
        <th></th>
        <th></th>
    </tr>
    <#list disciplinas?reverse as disciplina>
        <tr>
            <th>${disciplina.id}</th>
            <th>${disciplina.codDisciplina}</th>
            <#if !disciplina.local>
                <th>Laboratorio</th>
            <#else>
                <th>Sala</th>
            </#if>
            <th>${disciplina.nomeProf}</th>
            <th>${disciplina.cpfProf}</th>
            <th><a href="/disciplinas/${disciplina.id}/edit">Editar</a></th>
            <th>
                <form action="/disciplinas/${disciplina.id}" method="post">
                    <p>
                        <input type="submit" name="_action" value="Excluir">
                    </p>
                </form>
            </th>
        </tr>
    </#list>
</table>
<a href="/disciplinas/new">Cadastrar nova disciplina</a>
</body>
</html>