<#-- @ftlvariable name="professor" type="com.example.models.Professor" -->

<!DOCTYPE html>
<html>
    <header>
        <title>Editar Professor</title>
    </header>
    <body>
        <div>
            <form action="/professores/${professor.id}" method="post">
                <h3>Editar Professor</h3>
                <p>
                    <label>Nome: </label>
                    <input type="text" name="profNome" value="${professor.nome}">
                </p>
                <p>
                    <label>CPF: </label>
                    <input type="text" name="profCpf" value="${professor.cpf}">
                </p>
                <input type="submit" name="_action" value="Atualizar">
            </form>
        </div>
        <div>
            <form action="/professores/${professor.id}" method="post">
                <p>
                    <input type="submit" name="_action" value="Excluir">
                </p>
            </form>
        </div>
    </body>
</html>