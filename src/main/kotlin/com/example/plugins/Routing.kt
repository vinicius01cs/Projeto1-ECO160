package com.example.plugins

import com.example.models.*
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.http.content.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.util.*
import com.example.dao.*
import java.io.File

fun Application.configureRouting() {
    val daoProf = DAOFacadeImpl()
    val daoDisci = DAODisciImpl()
    val daoChave = DAOChaveImpl()

    routing {
        staticResources("/imagens", "imagens")

        get("/") {
            call.respond(FreeMarkerContent("index.ftl", mapOf("articles" to articles)))
        }
        route("articles"){
            get {

            }
        }
        //Rota Professor
        get("/professores") {
            call.respond(FreeMarkerContent("profIndex.ftl", mapOf("professores" to daoProf.todosProfessores())))
        }
        route("professores"){
            get {
            }
            get("new"){
                call.respond(FreeMarkerContent("profNovo.ftl", model = null))
            }
            post {
                val formParameter = call.receiveParameters()
                val nome = formParameter.getOrFail("profNome")
                val cpf = formParameter.getOrFail("profCpf")
                val professor = daoProf.addNovoProfessor(nome, cpf)

                call.respondRedirect("/professores/${professor?.id}")
            }
            get ("{id}"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("profShow.ftl", mapOf("professor" to daoProf.professor(id))))
            }
            get("{id}/edit"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("profEdit.ftl", mapOf("professor" to daoProf.professor(id))))
            }
            post("{id}"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                val formParameters = call.receiveParameters()
                when (formParameters.getOrFail("_action")) {
                    "Atualizar" -> {
                        val nome = formParameters.getOrFail("profNome")
                        val cpf = formParameters.getOrFail("profCpf")
                        daoProf.editProfessor(id, nome, cpf)
                        call.respondRedirect("/professores/${id}")
                    }
                    "Excluir" -> {
                        daoProf.deleteProfessor(id)
                        call.respondRedirect("/professores")
                    }
                }
            }
        }
        //Rota Disciplina
        get("/disciplinas"){
            call.respond(FreeMarkerContent("disciIndex.ftl", mapOf("disciplinas" to daoDisci.todasDisciplinas())))
        }
        route("disciplinas"){
            get{

            }
            get("new"){
                val professores = daoProf.todosProfessores()
                call.respond(FreeMarkerContent("disciNovo.ftl", mapOf("professores" to professores)))
            }
            post {
                val formParameter = call.receiveParameters()
                val codDisciplina = formParameter.getOrFail("disciCod")
                val local = formParameter.getOrFail("local").toBoolean()
                val nomeProfessor = formParameter.getOrFail("profNome").toString()
                val cpfProfessor = formParameter.getOrFail("profCpf").toString()
                val disciplina = daoDisci.addNovaDisciplina(codDisciplina, local, cpfProfessor, nomeProfessor)


                call.respondRedirect("/disciplinas/${disciplina?.id}")
            }
            get("{id}"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("disciShow.ftl", mapOf("disciplina" to daoDisci.disciplina(id))))
            }
            get("{id}/edit"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("disciEdit.ftl", mapOf("disciplina" to daoDisci.disciplina(id))))
            }
            post("{id}"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                val formParameters = call.receiveParameters()
                when (formParameters.getOrFail("_action")) {
                    "Atualizar" -> {
                        val codDisciplina = formParameters.getOrFail("codDisciplina")
                        val local = formParameters.getOrFail("local").toBoolean()
                        val nomeProf = formParameters.getOrFail("nomeProf")
                        val cpfProf = formParameters.getOrFail("cpfProf")
                        daoDisci.editDisciplina(id ,codDisciplina, local, cpfProf, nomeProf)
                        call.respondRedirect("/disciplinas/${id}")
                    }
                    "Excluir" -> {
                        daoDisci.deleteDisciplina(id)
                        call.respondRedirect("/disciplinas")
                    }
                }
            }
        }

        //Rota chave
        get("/chaves"){

        }
        route("/chaves"){
            get{
                call.respond(FreeMarkerContent("chaveIndex.ftl", mapOf("chaves" to daoChave.todasChaves())))
            }
            get("new"){
                val professores = daoProf.todosProfessores()
                call.respond(FreeMarkerContent("chaveNovo.ftl", mapOf("professores" to professores)))
            }
            post{
                val formParameter = call.receiveParameters()
                val nomeProfessor = formParameter.getOrFail("profNome")
                val cpfProfessor = formParameter.getOrFail("profCpf")
                val dataEmprestimo = formParameter.getOrFail("dataEmprestimo")
                val dataDevolucao = formParameter.getOrFail("dataDevolucao")

                val chave = daoChave.addNovaChave(nomeProfessor, cpfProfessor, dataEmprestimo, dataDevolucao)
                call.respondRedirect("/chaves/${chave?.id}")
            }
            get("{id}"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("chaveShow.ftl", mapOf("chave" to daoChave.chave(id))))
            }
            get("{id}/edit"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("chaveEdit.ftl", mapOf("chave" to daoChave.chave(id))))
            }
            post("{id}"){
                val id = call.parameters.getOrFail<Int>("id").toInt()
                val formParameters = call.receiveParameters()
                when (formParameters.getOrFail("_action")) {
                    "Atualizar" -> {
                        val nomeProfessor = formParameters.getOrFail("nomeProf")
                        val cpfProfessor = formParameters.getOrFail("cpfProf")
                        val dataEmprestimo = formParameters.getOrFail("dataEmprestimo")
                        val dataDevolucao = formParameters.getOrFail("dataDevolucao")
                        daoChave.editChave(id, nomeProfessor, cpfProfessor, dataEmprestimo, dataDevolucao)
                        call.respondRedirect("/chaves/${id}")
                    }
                    "Excluir" -> {
                        daoChave.deleteChave(id)
                        call.respondRedirect("/chaves")
                    }
                }
            }
        }
    }
}
