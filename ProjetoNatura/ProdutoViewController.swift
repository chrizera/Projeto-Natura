//
//  ProdutoViewController.swift
//  ProjetoNatura
//
//  Created by Mac VM on 30/07/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class ProdutoViewController: UIViewController {
    
    var nome = ""
    var quantidade = 0
    var preco = 0.0
    var descricao = ""
    var foto: UIImage?
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var imagemLabel: UIImageView!
    @IBOutlet weak var precoAvista: UILabel!
    @IBOutlet weak var precoParcelado: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nomeLabel.text = nome
        precoAvista.text = "Por R$\(preco)0 à vista"
        precoParcelado.text = "ou em 2x de R$\(preco/2)0 sem juros"
        imagemLabel.image = foto
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

}
