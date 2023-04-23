<#-- @ftlvariable name="professores" type="kotlin.collections.List<com.example.models.Professor>" -->
<#import "_layout.ftl" as layout />
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Professores</title>
</head>
<body style="text-align: center; font-family: sans-serif">
<h1>Professores</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>CPF</th>
    </tr>
<#list professores?reverse as professor>
    <tr>
        <th>${professor.id}</th>
        <th>${professor.nome}</th>
        <th>${professor.cpf}</th>
    </tr>
</#list>
</table>
<a href="/professores/new">novo</a>
</body>
</html>