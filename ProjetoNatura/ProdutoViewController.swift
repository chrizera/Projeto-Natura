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
    var url = ""
    var session: URLSession?
    
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
        
        
        let config = URLSessionConfiguration.default
        session = URLSession(configuration: config)
        let urlAPI = URL(string: "http://api.openweathermap.org/data/2.5/forecast?id=3448439&APPID=cfb0c23db4b87c44907fc5fbd0be1ca0")
        let task = session!.dataTask(with: urlAPI!) { (data, response, error) in
            let texto = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(texto!)
        
        }
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ProdutoParaSite" {
            let siteViewController = segue.destination as! SiteViewController
            siteViewController.url = url
        }
    }
    

}
