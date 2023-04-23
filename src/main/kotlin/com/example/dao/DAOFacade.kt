package com.example.dao

import com.example.models.*

interface DAOFacade {
    suspend fun todosProfessores(): List<Professor>
    suspend fun professor(id: Int): Professor?
    suspend fun addNovoProfessor(nome: String, cpf: String): Professor?
    suspend fun editProfessor(id: Int, nome: String, cpf: String): Boolean
    suspend fun deleteProfessor(id: Int): Boolean
}