package com.example.dao


import com.example.dao.DatabaseFactory.dbQuery
import com.example.models.*
import org.jetbrains.exposed.sql.ResultRow
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.SqlExpressionBuilder.eq

class DAODisciImpl : DAODisci {
    private fun resultRowToDisciplina(row: ResultRow) = Disciplina(
        id = row[Disciplinas.id],
        codDisciplina = row[Disciplinas.codDisciplina],
        local = row[Disciplinas.local],
        cpfProf = row[Disciplinas.cpfProf],
        nomeProf = row[Disciplinas.nomeProf]
    )
    override suspend fun todasDisciplinas(): List<Disciplina> = dbQuery {
        Disciplinas.selectAll().map(::resultRowToDisciplina)
    }

    override suspend fun disciplina(id: Int): Disciplina? = dbQuery {
        Disciplinas
            .select{Disciplinas.id eq id}
            .map(::resultRowToDisciplina)
            .singleOrNull()
    }

    override suspend fun addNovaDisciplina(codDisciplina: String, local: Boolean, cpfProf: String, nomeProf: String): Disciplina? = dbQuery{
        val insertStatement = Disciplinas.insert {
            it[Disciplinas.codDisciplina] = codDisciplina
            it[Disciplinas.local] = local
            it[Disciplinas.cpfProf] = cpfProf
            it[Disciplinas.nomeProf] = nomeProf
        }
        insertStatement.resultedValues?.singleOrNull()?.let(::resultRowToDisciplina)
    }

    override suspend fun editDisciplina(id: Int, codDisciplina: String, local: Boolean, cpfProf: String, nomeProf: String): Boolean = dbQuery {
        Disciplinas.update({Disciplinas.id eq id}){
            it[Disciplinas.codDisciplina] = codDisciplina
            it[Disciplinas.local] = local
            it[Disciplinas.cpfProf] = cpfProf
            it[Disciplinas.nomeProf] = nomeProf
        } >= 0
    }

    override suspend fun deleteDisciplina(id: Int): Boolean = dbQuery {
        Disciplinas.deleteWhere {Disciplinas.id eq id} > 0
    }
}
