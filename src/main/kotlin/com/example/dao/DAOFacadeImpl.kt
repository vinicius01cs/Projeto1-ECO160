package com.example.dao

import com.example.dao.DatabaseFactory.dbQuery
import com.example.models.*
import kotlinx.coroutines.runBlocking
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.SqlExpressionBuilder.eq

class DAOFacadeImpl : DAOFacade {
    private fun resultRowToProfessor(row: ResultRow) = Professor(
        id = row[Professores.id],
        nome = row[Professores.nome],
        cpf = row[Professores.cpf]
    )

    override suspend fun todosProfessores(): List<Professor> = dbQuery {
        Professores.selectAll().map(::resultRowToProfessor)
    }

    override suspend fun professor(id: Int): Professor? = dbQuery {
        Professores
            .select{Professores.id eq id}
            .map(::resultRowToProfessor)
            .singleOrNull()
    }

    override suspend fun addNovoProfessor(nome: String, cpf: String): Professor? = dbQuery {
        val insertStatement = Professores.insert {
            it[Professores.nome] = nome
            it[Professores.cpf] = cpf
        }
        insertStatement.resultedValues?.singleOrNull()?.let(::resultRowToProfessor)
    }

    override suspend fun editProfessor(id: Int, nome: String, cpf: String): Boolean = dbQuery{
        Professores.update({Professores.id eq id}){
            it[Professores.nome] = nome
            it[Professores.cpf] = cpf
        } > 0
    }

    override suspend fun deleteProfessor(id: Int): Boolean = dbQuery{
        Professores.deleteWhere{Professores.id eq id} > 0
    }
}