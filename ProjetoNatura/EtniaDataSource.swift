//
//  EtniaDataSource.swift
//  ProjetoNatura
//
//  Created by Mac VM on 09/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class EtniaDataSource: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

    var etnias = ["Branco", "Negro", "Indígena", "Pardo", "Mulato", "Caboclo", "Cafuzo"]
    var etniaSelecionada = ""
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return etnias.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return etnias[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        etniaSelecionada = etnias[row]
    }
}
