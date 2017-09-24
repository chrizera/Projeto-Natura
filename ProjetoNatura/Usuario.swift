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
    private var numeroCel: String
    private var senha: String
    private var foto: UIImage?
    private var email: String
    private var nome: String
    private var dataNascimento: String
    private var produtos: [Produto]
    private var tipoPele: String
    private var porcentagemTipoPele: Int?
    private var etnia: String
    private var tipoCabelo: String
    private var porcentagemTipoCabelo: Int?
    private var comprimento: String
    private var endereco: String
    
    init(login: String, numeroCel: String, senha: String, foto: UIImage?, email: String, nome: String, dataNascimento: String, produtos: [Produto], tipoPele: String, porcentagemTipoPele: Int?, etnia: String, tipoCabelo: String, porcentagemTipoCabelo: Int?, comprimento: String, endereco: String) {
        self.login = login
        self.numeroCel = numeroCel
        self.senha = senha
        self.foto = foto
        self.email = email
        self.nome = nome
        self.dataNascimento = dataNascimento
        self.produtos = produtos
        self.tipoPele = tipoPele
        self.porcentagemTipoPele = porcentagemTipoPele
        self.etnia = etnia
        self.tipoCabelo = tipoCabelo
        self.porcentagemTipoCabelo = porcentagemTipoCabelo
        self.comprimento = comprimento
        self.endereco = endereco
    }
}
