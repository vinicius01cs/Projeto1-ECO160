<#-- @ftlvariable name="disciplina" type="com.example.models.Disciplina" -->

<!DOCTYPE html>
<html>
<header>
    <title>Editar Disciplina</title>
</header>
<body>
<div>
    <form action="/disciplinas/${disciplina.id}" method="post">
        <h3>Editar Disciplina</h3>
        <p>
            <label>Código da Disciplina: </label>
            <input type="text" name="codDisciplina" value="${disciplina.codDisciplina}">
        </p>
        <p>
        <div>
            <p>
                <label>Local:</label>
            </p>
            <label>sala</label>
            <input type="radio" id="sala" name="local" value="true">
            <label>lab</label>
            <input type="radio" id="lab" name="local" value="false">
        </div>
        </p>
        <p>
            <label>Nome do Professor</label>
            <input type="text" name="nomeProf" value="${disciplina.nomeProf}">
        </p>
        <p>
            <label>CPF do Professor</label>
            <input type="text" name="cpfProf" value="${disciplina.cpfProf}">
        </p>

        <input type="submit" name="_action" value="Atualizar">
    </form>
</div>
<div>
    <form action="/disciplinas/${disciplina.id}" method="post">
        <p>
            <input type="submit" name="_action" value="Excluir">
        </p>
    </form>
</div>
</body>
</html>