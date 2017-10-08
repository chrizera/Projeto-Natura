//
//  PreferenciasViewController.swift
//  ProjetoNatura
//
//  Created by Mac VM on 30/07/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit
import CoreData

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
    
    var loginRecebido = ""
    var usuario = UsuarioCD()
    
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
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UsuarioCD")
        request.predicate = NSPredicate(format: "login = %@", loginRecebido)
        request.returnsObjectsAsFaults = false
        
        print("LOGIN: \(loginRecebido)")
        print("SELF VC \(self)")
        
        do {
            
            let results = try context.fetch(request) as! [UsuarioCD]
            if results.count > 0 {
            usuario = results[0]
            print(usuario.preferencia!.comprimentoCabelo!)
            }
        } catch {
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var switchPorcentagemPele: UISwitch!
    
    @IBAction func habilitarPorcentagemPele(_ sender: Any) {
        print(usuario.nome!)
        
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
    
    
    @IBAction func salvar(_ sender: Any) {
        
        let estruturaCabeloSelecionado = estruturaCabelodatadelegate.estruturaCabeloSelecionada
        let comprimentoCabeloSelecionado = comprimentoCabelodatadelegate.comprimentoSelecionado
        let corCabeloSelecionado = corCabelodatadelegate.corCabeloSelecionada
        let etniaSelecionada = etniasdatadelegate.etniaSelecionada
        let texturaCabeloSelecionada = texturaCabelodatadelegate.texturaCabeloSelecionada
        let tipoCabeloSelecionado = tipoCabelodatadelegate.tipoCabeloSelecionado
        let tipoPeleSelecionada = tipoPeledatadelegate.tipoPeleSelecionada
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let novaPreferencia = NSEntityDescription.insertNewObject(forEntityName: "PreferenciaCD", into: context)
        
        novaPreferencia.setValue(comprimentoCabeloSelecionado, forKey: "comprimentoCabelo")
        novaPreferencia.setValue(estruturaCabeloSelecionado, forKey: "estruturaCabelo")
        novaPreferencia.setValue(corCabeloSelecionado, forKey: "corCabelo")
        novaPreferencia.setValue(etniaSelecionada, forKey: "etnia")
        novaPreferencia.setValue(texturaCabeloSelecionada, forKey: "texturaCabelo")
        novaPreferencia.setValue(tipoCabeloSelecionado, forKey: "tipoCabelo")
        novaPreferencia.setValue(tipoPeleSelecionada, forKey: "tipoPele")
        
        do {
            usuario.preferencia = novaPreferencia as? PreferenciaCD
            try context.save()
            let alerta = UIAlertController(title: "Parabéns!", message: "Suas informaçoes foram salvas com sucesso!", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "Fechar", style: .default, handler: nil))
            
            present(alerta, animated: true, completion: nil)
            
            
        } catch {
            
        }
        
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PreferenciaCD")
//        request.returnsObjectsAsFaults = false
//        
//        do {
//            let results = try context.fetch(request)
//            
//            if results.count > 0 {
//                for result in results as! [NSManagedObject] {
//                    if let comprimentoCabeloSalvo = result.value(forKey: "comprimentoCabelo") as? String {
//                        print(comprimentoCabeloSalvo)
//                    }
//                    if let estruturaCabeloSalvo = result.value(forKey: "estruturaCabelo") as? String {
//                        print(estruturaCabeloSalvo)
//                    }
//                    if let corCabeloSalvo = result.value(forKey: "corCabelo") as? String {
//                        print(corCabeloSalvo)
//                    }
//                    if let etniaSalva = result.value(forKey: "etnia") as? String {
//                        print(etniaSalva)
//                    }
//                    if let texturaCabeloSalvo = result.value(forKey: "texturaCabelo") as? String {
//                        print(texturaCabeloSalvo)
//                    }
//                    if let tipoCabeloSalvo = result.value(forKey: "tipoCabelo") as? String {
//                        print(tipoCabeloSalvo)
//                    }
//                    if let tipoPeleSalva = result.value(forKey: "tipoPele") as? String {
//                        print(tipoPeleSalva)
//                    }
//                }
//            }
//            
//        } catch {
//            
//        }
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
