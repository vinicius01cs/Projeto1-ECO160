<#-- @ftlvariable name="chaves" type="kotlin.collections.List<com.example.models.Chave>" -->
<#import "_layout.ftl" as layout />
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Emprestimos</title>
</head>
<body style="text-align: center; font-family: sans-serif">
<h1>Emprestimos de chaves</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Nome Profeessor</th>
        <th>CPF Professor</th>
        <th>Data Emprestimo</th>
        <th>Data Devolução</th>
        <th></th>
        <th></th>
    </tr>
    <#list chaves?reverse as chave>
        <tr>
            <th>${chave.id}</th>
            <th>${chave.profNome}</th>
            <th>${chave.profCpf}</th>
            <th>${chave.dataEmprestimo}</th>
            <th>${chave.dataDevolucao}</th>
            <th><a href="/chaves/${chave.id}/edit">Editar</a></th>
            <th>
                <form action="/chaves/${chave.id}" method="post">
                    <p>
                        <input type="submit" name="_action" value="Excluir">
                    </p>
                </form>
            </th>
        </tr>
    </#list>
</table>
<a href="/chaves/new">Novo empréstimo</a>
</body>
</html>