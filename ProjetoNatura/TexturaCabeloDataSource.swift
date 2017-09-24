//
//  TexturaCabeloDataSource.swift
//  ProjetoNatura
//
//  Created by Mac VM on 09/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class TexturaCabeloDataSource: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

    var texturasCabelo = ["Liso", "Ondulado", "Cacheado", "Crespo"]
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return texturasCabelo.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return texturasCabelo[row]
    }
}
