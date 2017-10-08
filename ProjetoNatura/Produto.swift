//
//  Produto.swift
//  ProjetoNatura
//
//  Created by Usuário Convidado on 05/08/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit
import CoreData

class Produto {

    var codigo: Int?
    public var nome: String
    public var classificacao: Int
    public var quantidade: Int
    public var preco: Double
    var foto: UIImage?
    public var descricao: String
    public var link: String
    
    init(nome: String, classificacao: Int, quantidade: Int, preco: Double, foto: UIImage?, descricao: String, link: String) {
        self.nome = nome
        self.classificacao = classificacao
        self.quantidade = quantidade
        self.preco = preco
        self.foto = foto
        self.descricao = descricao
        self.link = link
    }
}
