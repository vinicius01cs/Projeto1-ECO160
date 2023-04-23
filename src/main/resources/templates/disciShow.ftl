<#-- @ftlvariable name="disciplina" type="com.example.models.Disciplina" -->

<!DOCTYPE html>
<html>
<header>
    <title>${disciplina.codDisciplina}</title>
</header>
<body>
<p>
    <label>Codigo da Disciplina: ${disciplina.codDisciplina}</label>
</p>
<p>
    <label>Local:</label>
    <#if !disciplina.local>
        <label>Laboratorio</label>
    <#else>
        <label>Sala</label>
    </#if>
</p>
<p>
    <label>Professor: ${disciplina.nomeProf}</label>
</p>
<p>
    <label>CPF do Professor: ${disciplina.cpfProf}</label>
</p>
<p>
    <a href="/disciplinas">Voltar</a>
</p>
</body>
</html>