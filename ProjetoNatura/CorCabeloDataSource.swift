//
//  CorCabeloDataSource.swift
//  ProjetoNatura
//
//  Created by Mac VM on 09/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class CorCabeloDataSource: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {

    var coresCabelo = ["Loiro natural", "Castanho natural", "Ruivo natural", "Preto natural", "Tingido loiro", "Tingido castanho", "Tingido ruivo", "Tingido preto"]
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coresCabelo.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coresCabelo[row]
    }
}
