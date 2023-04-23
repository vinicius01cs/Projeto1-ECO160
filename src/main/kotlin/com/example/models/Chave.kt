package com.example.models

import org.jetbrains.exposed.sql.*

data class Chave(val id: Int, val profNome: String, val profCpf: String, val dataEmprestimo: String, val dataDevolucao: String)

object Chaves : Table(){
    val id = integer("id").autoIncrement()
    val profCpf = varchar("profCpf", 15)
    val profNome = varchar("profNome", 128)
    val dataEmprestimo = varchar("dataEmprestimo", 100)
    val dataDevolucao = varchar("dataDevolucao", 100)

    override val primaryKey = PrimaryKey(id)
}