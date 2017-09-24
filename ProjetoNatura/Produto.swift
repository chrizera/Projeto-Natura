//
//  Produto.swift
//  ProjetoNatura
//
//  Created by Usuário Convidado on 05/08/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class Produto {

    var nome: String
    var classificacao: Int
    var quantidade: Int
    var preco: Double
    var foto: UIImage?
    var descricao: String
    
    init(nome: String, classificacao: Int, quantidade: Int, preco: Double, foto: UIImage?, descricao: String) {
        self.nome = nome
        self.classificacao = classificacao
        self.quantidade = quantidade
        self.preco = preco
        self.foto = foto
        self.descricao = descricao
    }
    
}
