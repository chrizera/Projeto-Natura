
//
//  ConsultoriaViewController.swift
//  ProjetoNatura
//
//  Created by Mac VM on 30/07/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class ConsultoriaViewController: UIViewController {
    
    
    @IBOutlet weak var assunto: UITextField!
    @IBOutlet weak var cidade: UITextField!
    @IBOutlet weak var estado: UITextField!
    @IBOutlet weak var endereco: UITextField!
    @IBOutlet weak var mensagem: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func limpar(_ sender: Any) {
        assunto.text = ""
        cidade.text = ""
        estado.text = ""
        endereco.text = ""
        mensagem.text = ""
    }

}
