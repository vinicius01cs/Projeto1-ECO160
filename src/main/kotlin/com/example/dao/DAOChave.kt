package com.example.dao

import com.example.models.Chave

interface DAOChave {
    suspend fun todasChaves(): List<Chave>
    suspend fun chave(id: Int): Chave?
    suspend fun addNovaChave(profNome: String, profCpf: String, dataEmprestimo: String, dataDevolucao: String): Chave?
    suspend fun editChave(id: Int,profNome: String,profCpf: String, dataEmprestimo: String, dataDevolucao: String): Boolean
    suspend fun deleteChave(id: Int): Boolean
}