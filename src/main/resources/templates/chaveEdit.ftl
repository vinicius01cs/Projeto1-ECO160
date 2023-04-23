<#-- @ftlvariable name="chave" type="com.example.models.Chave" -->

<!DOCTYPE html>
<html>
<header>
    <title>Editar Empréstimo</title>
</header>
<body>
<div>
    <form action="/chaves/${chave.id}" method="post">
        <h3>Editar empréstimo de chave</h3>
        <p>
            <label>Código de empréstimo: ${chave.id}</label>
        </p>
        <p>
        <p>
            <label>Nome do Professor</label>
            <input type="text" name="nomeProf" value="${chave.profNome}">
        </p>
        <p>
            <label>CPF do Professor</label>
            <input type="text" name="cpfProf" value="${chave.profCpf}">
        </p>
        <p>
            <label>Data do empréstimo:</label>
            <input type="datetime-local" name="dataEmprestimo" value="${chave.dataEmprestimo}">
        </p>
        <p>
            <label>Data da devolução:</label>
            <input type="datetime-local" name="dataDevolucao" value="${chave.dataDevolucao}">
        </p>
        <input type="submit" name="_action" value="Atualizar">
    </form>
</div>
<div>
    <form action="/chaves/${chave.id}" method="post">
        <p>
            <input type="submit" name="_action" value="Excluir">
        </p>
    </form>
</div>
</body>
</html>