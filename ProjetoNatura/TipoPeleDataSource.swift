//
//  TipoPeleDataSource.swift
//  ProjetoNatura
//
//  Created by Mac VM on 09/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class TipoPeleDataSource: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var tiposPele = ["Normal", "Seca", "Oleosa", "Mista"]

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tiposPele.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tiposPele[row]
    }
}
