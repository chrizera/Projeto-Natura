//
//  TipoCabeloDataSource.swift
//  ProjetoNatura
//
//  Created by Mac VM on 09/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class TipoCabeloDataSource: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {

    var tiposCabelo = ["Normal", "Oleoso", "Misto", "Seco"]
    var tipoCabeloSelecionado = ""
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tiposCabelo.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tiposCabelo[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tipoCabeloSelecionado = tiposCabelo[row]
    }
}
