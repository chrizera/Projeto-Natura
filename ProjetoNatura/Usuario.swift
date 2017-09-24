//
//  Usuario.swift
//  ProjetoNatura
//
//  Created by Usuário Convidado on 05/08/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class Usuario {
    
    private var login: String
    private var senha: String
    private var foto: UIImage?
    private var email: String
    private var nome: String
    private var dataNascimento: String
    private var produtos: [Produto]
    private var preferencias: Preferencias
    
    init(login: String, senha: String, foto: UIImage?, email: String, nome: String, dataNascimento: String, produtos: [Produto], preferencias: Preferencias) {
        self.login = login
        self.senha = senha
        self.foto = foto
        self.email = email
        self.nome = nome
        self.dataNascimento = dataNascimento
        self.produtos = produtos
        self.preferencias = preferencias
    }
}
