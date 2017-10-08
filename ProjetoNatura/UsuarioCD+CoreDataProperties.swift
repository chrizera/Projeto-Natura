//
//  UsuarioCD+CoreDataProperties.swift
//  ProjetoNatura
//
//  Created by Mac VM on 08/10/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import Foundation
import CoreData


extension UsuarioCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UsuarioCD> {
        return NSFetchRequest<UsuarioCD>(entityName: "UsuarioCD")
    }

    @NSManaged public var dataNascimento: NSDate?
    @NSManaged public var email: String?
    @NSManaged public var login: String?
    @NSManaged public var nome: String?
    @NSManaged public var senha: String?
    @NSManaged public var preferencia: PreferenciaCD?
    @NSManaged public var produto: NSSet?

}

// MARK: Generated accessors for produto
extension UsuarioCD {

    @objc(addProdutoObject:)
    @NSManaged public func addToProduto(_ value: ProdutoCD)

    @objc(removeProdutoObject:)
    @NSManaged public func removeFromProduto(_ value: ProdutoCD)

    @objc(addProduto:)
    @NSManaged public func addToProduto(_ values: NSSet)

    @objc(removeProduto:)
    @NSManaged public func removeFromProduto(_ values: NSSet)

}
