//
//  Preferencias.swift
//  ProjetoNatura
//
//  Created by Mac VM on 24/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class Preferencias {
    
    private var tipoPele: String
    private var porcentagemTipoPele: Double
    private var etnia: String
    private var tipoCabelo: String
    private var porcentagemTipoCabelo: Double
    private var comprimentoCabelo: String
    private var corCabelo: String
    private var texturaCabelo: String
    private var estruturaCabelo: String
    
    init(tipoPele: String, porcentagemTipoPele: Double, etnia: String, tipoCabelo: String, porcentagemTipoCabelo: Double, comprimentoCabelo: String, corCabelo: String, texturaCabelo: String, estruturaCabelo: String) {
        self.tipoPele = tipoPele
        self.porcentagemTipoPele = porcentagemTipoPele
        self.etnia = etnia
        self.tipoCabelo = tipoCabelo
        self.porcentagemTipoCabelo = porcentagemTipoCabelo
        self.comprimentoCabelo = comprimentoCabelo
        self.corCabelo = corCabelo
        self.texturaCabelo = texturaCabelo
        self.estruturaCabelo = estruturaCabelo
    }
    
    init(tipoPele: String, etnia: String, tipoCabelo: String, comprimentoCabelo: String, corCabelo: String, texturaCabelo: String, estruturaCabelo: String) {
        self.tipoPele = tipoPele
        self.etnia = etnia
        self.tipoCabelo = tipoCabelo
        self.comprimentoCabelo = comprimentoCabelo
        self.corCabelo = corCabelo
        self.texturaCabelo = texturaCabelo
        self.estruturaCabelo = estruturaCabelo
        self.porcentagemTipoCabelo = 0
        self.porcentagemTipoPele = 0
    }
}
