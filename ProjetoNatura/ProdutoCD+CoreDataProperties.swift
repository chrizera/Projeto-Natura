//
//  ProdutoCD+CoreDataProperties.swift
//  ProjetoNatura
//
//  Created by Mac VM on 08/10/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import Foundation
import CoreData


extension ProdutoCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ProdutoCD> {
        return NSFetchRequest<ProdutoCD>(entityName: "ProdutoCD")
    }

    @NSManaged public var classificacao: Int32
    @NSManaged public var descricao: String?
    @NSManaged public var link: String?
    @NSManaged public var nome: String?
    @NSManaged public var preco: Double
    @NSManaged public var quantidade: Int32
    @NSManaged public var usuario: UsuarioCD?

}
