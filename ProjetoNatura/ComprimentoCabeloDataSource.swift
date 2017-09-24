//
//  ComprimentoCabeloDataSource.swift
//  ProjetoNatura
//
//  Created by Mac VM on 09/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class ComprimentoCabeloDataSource: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

    var comprimentosCabelo = ["Curto (até 30cm)", "Médio (até 50cm)", "Longo (mais de 50cm)"]
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return comprimentosCabelo.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return comprimentosCabelo[row]
    }
}
