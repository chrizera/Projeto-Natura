//
//  EstruturaCabeloDataSource.swift
//  ProjetoNatura
//
//  Created by Mac VM on 09/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class EstruturaCabeloDataSource: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {

    var estruturasCabelo = ["Fino", "Médio", "Grosso", "Cachos soltos","Cachos apertados", "Cachos super apertados", "Macio", "Seco", "Sem forma"]
    var estruturaCabeloSelecionada = ""
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return estruturasCabelo.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return estruturasCabelo[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        estruturaCabeloSelecionada = estruturasCabelo[row]
    }
}
