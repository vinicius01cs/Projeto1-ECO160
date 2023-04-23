package com.example.dao


import com.example.dao.DatabaseFactory.dbQuery
import com.example.models.*
import org.jetbrains.exposed.sql.ResultRow
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.SqlExpressionBuilder.eq

class DAOChaveImpl : DAOChave {
    private fun resultRowToChave(row: ResultRow) = Chave(
        id = row[Chaves.id],
        profNome = row[Chaves.profNome],
        profCpf = row[Chaves.profCpf],
        dataEmprestimo = row[Chaves.dataEmprestimo],
        dataDevolucao = row[Chaves.dataDevolucao]
    )

    override suspend fun todasChaves(): List<Chave> = dbQuery {
        Chaves.selectAll().map(::resultRowToChave)
    }
    override suspend fun chave(id: Int): Chave? = dbQuery {
        Chaves
            .select{Chaves.id eq id}
            .map(::resultRowToChave)
            .singleOrNull()
    }
    override suspend fun addNovaChave(profNome: String, profCpf: String, dataEmprestimo: String, dataDevolucao: String): Chave? = dbQuery{
        val insertStatement = Chaves.insert{
            it[Chaves.profNome] = profNome
            it[Chaves.profCpf] = profCpf
            it[Chaves.dataEmprestimo] = dataEmprestimo
            it[Chaves.dataDevolucao] = dataDevolucao
        }
        insertStatement.resultedValues?.singleOrNull()?.let(::resultRowToChave)
    }
    override suspend fun editChave(id: Int, profNome: String, profCpf: String, dataEmprestimo: String, dataDevolucao: String): Boolean = dbQuery {
        Chaves.update({Chaves.id eq id}){
            it[Chaves.profNome] = profNome
            it[Chaves.profCpf] = profCpf
            it[Chaves.dataEmprestimo] = dataEmprestimo
            it[Chaves.dataDevolucao] = dataDevolucao
        } > 0
    }

    override suspend fun deleteChave(id: Int): Boolean = dbQuery {
        Chaves.deleteWhere{Chaves.id eq id} > 0
    }
}