<#-- @ftlvariable name="chave" type="com.example.models.Chave" -->

<!DOCTYPE html>
<html>
<header>
    <title>Detalhe do empréstimo</title>
</header>
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
    <div class="divCampo">
        <p class="separador"></p>
        <label>Código do emprestimo: ${chave.id}</label>
        <p></p>
        <label>Professor: ${chave.profNome}</label>
        <p></p>
        <label>CPF do Professor: ${chave.profCpf}</label>
        <p></p>
        <label>Data do Emprestimo: ${chave.dataEmprestimo}</label>
        <p></p>
        <label>Data da Devolução: ${chave.dataDevolucao}</label>
        <p class="separador"></p>
        <a href="/chaves" class="botaoVoltar">Voltar</a>
    </div>
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
    .divCampo{
        width: 100%;
        background-color: #ddd;
    }
    .divCampo label{
        margin-left: 20px;
        font-size: 20px;
    }
    .separador {
        border: 1px solid #286655;
        margin-right: 30px;
        margin-left: 30px;
        border-radius: 35px;
    }
    .botaoVoltar {
        background-color: #807675;
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
</style>
</html>