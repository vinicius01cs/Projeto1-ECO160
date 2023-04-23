package com.example.dao

import com.example.models.Disciplina

interface DAODisci {
    suspend fun todasDisciplinas(): List<Disciplina>
    suspend fun disciplina(id: Int): Disciplina?
    suspend fun addNovaDisciplina(codDisciplina: String, local: Boolean, cpfProf:String, nomeProf:String): Disciplina?
    suspend fun editDisciplina(id: Int, codDisciplina: String, local: Boolean, cpfProf:String, nomeProf:String): Boolean
    suspend fun deleteDisciplina(id: Int): Boolean
}