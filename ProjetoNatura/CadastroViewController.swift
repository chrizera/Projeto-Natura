//
//  CadastroViewController.swift
//  ProjetoNatura
//
//  Created by Mac VM on 01/10/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit
import CoreData

class CadastroViewController: UIViewController {
    
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var dataNascimento: UIDatePicker!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var confirmacaoSenha: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func voltar(_ sender: Any) {
    }
    

    @IBAction func cadastrar(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let novoUsuario = NSEntityDescription.insertNewObject(forEntityName: "UsuarioCD", into: context)
        
        novoUsuario.setValue(login.text, forKey: "login")
        novoUsuario.setValue(nome.text, forKey: "nome")
        novoUsuario.setValue(email.text, forKey: "email")
        novoUsuario.setValue(dataNascimento.date, forKey: "dataNascimento")
        novoUsuario.setValue(senha.text, forKey: "senha")
        
        do {
            try context.save()
            
            let alerta = UIAlertController(title: "Parabéns!", message: "Seu cadastro foi feito com sucesso!", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "Fechar", style: .default, handler: nil))
            
            present(alerta, animated: true, completion: nil)
            
        } catch {
            
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
