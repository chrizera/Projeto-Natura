//
//  Usuario.swift
//  ProjetoNatura
//
//  Created by Usuário Convidado on 05/08/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit
import CoreData

class Usuario {
    
    public var login: String
    private var senha: String
    private var foto: UIImage?
    private var email: String
    private var nome: String
    private var dataNascimento: Date
    private var produtos: [Produto]?
    private var preferencias: Preferencias?
    private var codigo: Int?
    
    init(login: String, senha: String, foto: UIImage?, email: String, nome: String, dataNascimento: Date, produtos: [Produto], preferencias: Preferencias) {
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
