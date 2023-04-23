<#-- @ftlvariable name="chave" type="com.example.models.Chave" -->

<!DOCTYPE html>
<html>
<header>
    <title>Detalhe do empréstimo</title>
</header>
<body>
<p>
    <label>Código do emprestimo: ${chave.id}</label>
</p>
    <label>Professor: ${chave.profNome}</label>
</p>
<p>
    <label>CPF do Professor: ${chave.profCpf}</label>
</p>
<p>
    <label>Data do Emprestimo: ${chave.dataEmprestimo}</label>
</p>
<p>
    <label>Data da Devolução: ${chave.dataDevolucao}</label>
</p>
<p>
    <a href="/chaves">Voltar</a>
</p>
</body>
</html>