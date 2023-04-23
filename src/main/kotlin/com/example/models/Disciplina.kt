package com.example.models

import org.jetbrains.exposed.sql.*

data class Disciplina(val id: Int, var codDisciplina: String, var local: Boolean, var cpfProf:String, var nomeProf:String)

object Disciplinas : Table() {
    val id = integer("id").autoIncrement()
    var codDisciplina = varchar("codDisciplina", 128)
    var local = bool("local")
    var cpfProf = varchar("cpfProf", 15)
    var nomeProf = varchar("nomeProf", 128)

    override val primaryKey = PrimaryKey(Disciplinas.id)
}