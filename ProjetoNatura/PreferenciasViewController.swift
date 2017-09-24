//
//  PreferenciasViewController.swift
//  ProjetoNatura
//
//  Created by Mac VM on 30/07/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class PreferenciasViewController: UIViewController{

    @IBOutlet weak var tipoPele: UIPickerView!
    @IBOutlet weak var etnia: UIPickerView!
    @IBOutlet weak var tipoCabelo: UIPickerView!
    @IBOutlet weak var comprimentoCabelo: UIPickerView!
    @IBOutlet weak var corCabelo: UIPickerView!
    @IBOutlet weak var texturaCabelo: UIPickerView!
    @IBOutlet weak var estruturaCabelo: UIPickerView!
    @IBOutlet weak var porcentagemPele: UITextField!
    @IBOutlet weak var porcentagemCabelo: UITextField!
    
    let tipoPeledatadelegate = TipoPeleDataSource()
    let etniasdatadelegate = EtniaDataSource()
    let tipoCabelodatadelegate = TipoCabeloDataSource()
    let comprimentoCabelodatadelegate = ComprimentoCabeloDataSource()
    let corCabelodatadelegate = CorCabeloDataSource()
    let texturaCabelodatadelegate = TexturaCabeloDataSource()
    let estruturaCabelodatadelegate = EstruturaCabeloDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipoPele.dataSource = tipoPeledatadelegate
        tipoPele.delegate = tipoPeledatadelegate
        etnia.dataSource = etniasdatadelegate
        etnia.delegate = etniasdatadelegate
        tipoCabelo.dataSource = tipoCabelodatadelegate
        tipoCabelo.delegate = tipoCabelodatadelegate
        comprimentoCabelo.dataSource = comprimentoCabelodatadelegate
        comprimentoCabelo.delegate = comprimentoCabelodatadelegate
        corCabelo.dataSource = corCabelodatadelegate
        corCabelo.delegate = corCabelodatadelegate
        texturaCabelo.dataSource = texturaCabelodatadelegate
        texturaCabelo.delegate = texturaCabelodatadelegate
        estruturaCabelo.dataSource = estruturaCabelodatadelegate
        estruturaCabelo.delegate = estruturaCabelodatadelegate

        porcentagemPele.isHidden = true
        porcentagemCabelo.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var switchPorcentagemPele: UISwitch!
    
    @IBAction func habilitarPorcentagemPele(_ sender: Any) {
        
        if switchPorcentagemPele.isOn {
            porcentagemPele.isHidden = false

        } else {
            porcentagemPele.isHidden = true

        }
        
    }
    
    
    @IBOutlet weak var switchPorcentagemCabelo: UISwitch!
    
    @IBAction func habilitarPorcentagemCabelo(_ sender: Any) {
        if switchPorcentagemCabelo.isOn {
            porcentagemCabelo.isHidden = false
        } else {
            porcentagemCabelo.isHidden = true
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
