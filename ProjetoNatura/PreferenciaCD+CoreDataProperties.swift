//
//  PreferenciaCD+CoreDataProperties.swift
//  ProjetoNatura
//
//  Created by Mac VM on 08/10/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import Foundation
import CoreData


extension PreferenciaCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PreferenciaCD> {
        return NSFetchRequest<PreferenciaCD>(entityName: "PreferenciaCD")
    }

    @NSManaged public var comprimentoCabelo: String?
    @NSManaged public var corCabelo: String?
    @NSManaged public var estruturaCabelo: String?
    @NSManaged public var etnia: String?
    @NSManaged public var porcentagemTipoCabelo: Double
    @NSManaged public var porcentagemTipoPele: Double
    @NSManaged public var texturaCabelo: String?
    @NSManaged public var tipoCabelo: String?
    @NSManaged public var tipoPele: String?
    @NSManaged public var usuario: UsuarioCD?

}
