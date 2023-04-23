package com.example.models

import java.util.concurrent.atomic.AtomicInteger
import org.jetbrains.exposed.sql.*

data class Professor(val id: Int, var nome: String, var cpf: String)

object Professores : Table(){
    val id = integer("id").autoIncrement()
    val nome = varchar("nome", 128)
    var cpf = varchar("cpf", 15 )

    override val primaryKey = PrimaryKey(id)
}
