//
//  LoginViewController.swift
//  ProjetoNatura
//
//  Created by Mac VM on 23/07/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var senha: UITextField!
    var usuario: UsuarioCD?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.text = ""
        senha.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func entrar(_ sender: Any) {
        
        let loginDigitado = login.text
        let senhaDigitada = senha.text

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UsuarioCD")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "login = %@", loginDigitado!)
        
        do {
            
            let results = try context.fetch(request) as! [UsuarioCD]
            if results.count > 0 {
                self.usuario = results[0]

                if results[0].login!.contains(loginDigitado!) && results[0].senha!.contains(senhaDigitada!) {
                    performSegue(withIdentifier: "loginSegue", sender: nil)
                } else {
                    let alerta = UIAlertController(title: "Atencao!", message: "Usuario ou senha invalidos", preferredStyle: .alert)
                    alerta.addAction(UIAlertAction(title: "Fechar", style: .default, handler: nil))
                    
                    present(alerta, animated: true, completion: nil)
                }
            } else {
                let alerta = UIAlertController(title: "Atencao!", message: "Usuario ou senha invalidos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "Fechar", style: .default, handler: nil))
                
                present(alerta, animated: true, completion: nil)
            }
            
        } catch {
            
        }
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        guard let usuario = self.usuario else { return }
        
        let tabBarController = segue.destination as! UITabBarController
        let preferenciaNavigationController = tabBarController.viewControllers![3] as! UINavigationController
        let preferenciaViewController = preferenciaNavigationController.viewControllers[0] as! PreferenciasViewController
        preferenciaViewController.loginRecebido = usuario.login!
        
        let listaProdutoNavigationController = tabBarController.viewControllers![0] as! UINavigationController
        let listaProdutoViewController = listaProdutoNavigationController.topViewController! as! ListaProdutoTableViewController
        listaProdutoViewController.loginRecebido = usuario.login!
    }
 

}
