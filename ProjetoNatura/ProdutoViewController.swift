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
        
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let dataAtualFormatada = formatter.string(from: date)
        
        let config = URLSessionConfiguration.default
        session = URLSession(configuration: config)
        let urlAPI = URL(string: "http://api.openweathermap.org/data/2.5/forecast?id=3448439&APPID=cfb0c23db4b87c44907fc5fbd0be1ca0")
        let task = session!.dataTask(with: urlAPI!) { (data, response, error) in
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String:AnyObject]
                guard let listResultado = json["list"] as? [[String:AnyObject]] else { return }
                for resultado in listResultado {

                    guard let dataRetornada = resultado["dt_txt"] as? String else { return }
                    let dataFormatada = dataRetornada.substring(to: dataRetornada.index(dataRetornada.startIndex, offsetBy: 10))
                    
                   
//                    guard let weather = resultado["weather"] as? [[String:AnyObject]] else { return }
                    
//                    for temperatura in weather {
//                        guard let temp = temperatura["main"] as? String else { return }
//                        print(temp)
//                    }
//                    print(dataFormatada)
                }
                
                let dataRetornadaPrimeiraPosicao = listResultado[0]["dt_txt"] as! String
                let dataRetornadaPrimeiraPosicaoFormatada = dataRetornadaPrimeiraPosicao.substring(to: dataRetornadaPrimeiraPosicao.index(dataRetornadaPrimeiraPosicao.startIndex, offsetBy: 10))
                print(dataRetornadaPrimeiraPosicaoFormatada)
                
            } catch  {
            }
//            let texto = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
//            print(texto!)
        
        }
        task.resume()
        
    }
    
    func retornarDadoJSON(data: Data, chave: String) -> String? {
        var resposta: String?=nil
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String:AnyObject]
            if let campo = json[chave] as? String {
                resposta = campo
            }
        } catch let error as NSError {
            return "Erro: \(error.localizedDescription)"
        }
        return resposta
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
