//
//  ListaProdutoTableViewController.swift
//  ProjetoNatura
//
//  Created by Mac VM on 23/07/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class ListaProdutoTableViewController: UITableViewController {
    
    var produtos = [Produto]()
    var nome = ""
    var quantidade = 0
    var preco = 0.0
    var descricao = ""
    var foto: UIImage?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let produto1 = Produto(nome: "Gel Creme Antissinais 30", classificacao: 5, quantidade: 40, preco: 68.20, foto: #imageLiteral(resourceName: "produto1"), descricao: "Sobre o produto: A partir dos 30 anos, a pele começa a mostrar sinais de cansaço: primeiras rugas e linhas de expressão. O tratamento ideal é aquele que renova a pele e recupera a energia. Por isso, o novo gel creme antissinais 30+ reduz o aspecto de pele cansada e hidrata, estimula a renovaçao celular, restaura a barreira natural de hidrataçao da pele, melhora a textura da pele e suaviza as linhas de expressao e reduz rugas.")
        let produto2 = Produto(nome: "Tonico Detox Adstringente Chronos", classificacao: 5, quantidade: 150, preco: 41.10, foto: #imageLiteral(resourceName: "produto2"), descricao: "Sobre o produto: Os novos tonicos contem a tecnologia Detox Celular para eliminar toxinas celulares deixando as celulas mais saudaveis e com mais energia para absorver os ativos dos produtos de tratamento, e reduzindo sinais de cansaco provocados pelo excesso de toxinas, como o amarelamento da pele, perda do brilho natural etc.")
        let produto3 = Produto(nome: "Hydra Tonalizante Chronos", classificacao: 5, quantidade: 50, preco: 38.40, foto: #imageLiteral(resourceName: "produto3"), descricao: "O novo Chronos Hydra oferece uma solução completa em hidratação para a sua pele: de dia, hidrata, protege do sol e das agressões diárias e a noite, hidrata e acalma a pele. Benefícios: Possui textura leve, adequada à pele da mulher brasileira e embalagem prática e fácil de transportar.")
        let produto4 = Produto(nome: "Shampoo Hidratação Reparadora Plant", classificacao: 5, quantidade: 300, preco: 12.30, foto: #imageLiteral(resourceName: "produto4"), descricao: "A linha especialista em manter seus cabelos hidratados e reparados agora com novas fórmulas e 10 benefícios. Com alta tecnologia, o poder do complexo de bioaminoácidos de QUINOA – ativos naturais e fonte de proteínas e aminoácidos, recuperam o interior dos fios e agem na parte externa da fibra, fortalecendo e restaurando profundamente os cabelos danificados. O shampoo Hidratação Reparadora limpa os fios deixando-os prontos para iniciar o tratamento.")
        let produto5 = Produto(nome: "Shampoo Nutrição e Brilho Plant", classificacao: 5, quantidade: 300, preco: 11.40, foto: #imageLiteral(resourceName: "produto5"), descricao: "Uma linha completa de tratamento dos fios enriquecida com exclusivo complexo de óleos nutritivos (óleo de noz pecã, macadâmia e gergelim) para proporcionar nutrição, restauração profunda e brilho aos fios, sem pesar. Benefícios: Limpa sem agredir, possui fórmula leve e transparente, prepara os fios para iniciar o tratamento.")
        let produto6 = Produto(nome: "Condicionador Liso e Solto Plant", classificacao: 5, quantidade: 300, preco: 15.50, foto: #imageLiteral(resourceName: "produto6"), descricao: "Quando os cabelos passam por processos de alisamento, eles precisam de um tratamento especial. O Condicionador Liso e Solto Plant proporciona um banho de queratina vegetal que age diretamente na estrutura capilar e restaura os fios profundamente, fortalecendo e deixando os cabelos macios e lisos por mais tempo. Além disso, ajuda a reduzir o frizz e prolonga o efeito da escova progressiva. Benefícios: Cuidados com os cabelos. Recomendado para: Cabelos lisos e alisados.")
        
        produtos.append(produto1)
        produtos.append(produto2)
        produtos.append(produto3)
        produtos.append(produto4)
        produtos.append(produto5)
        produtos.append(produto6)
        
        let alerta = UIAlertController(title: "Atenção!", message: "Clique no menu PREFERÊNCIAS para saber quais são os produtos exclusivos para você!", preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Descobrir", style: .default, handler: nil))
        
        present(alerta, animated: true, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return produtos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProdutoCell", for: indexPath) as! ProdutoTableViewCell

        let produto = produtos[indexPath.row]
        
        cell.nome.text = produto.nome
        cell.imagem.image = produto.foto
        cell.quantidade.text = "\(produto.quantidade)ml"
        cell.precoAVista.text = "Por R$\(produto.preco)0 à vista"
        cell.precoParcelado.text = "ou em 2x de R$\(produto.preco/2)0 sem juros"
        cell.descricao.text = produto.descricao
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let produto = produtos[indexPath.row]
        
        nome = produto.nome
        foto = produto.foto
        quantidade = produto.quantidade
        preco = produto.preco
        descricao = produto.descricao
        
       performSegue(withIdentifier: "ListaProdutoParaProdutoSegue", sender: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == "ListaProdutoParaProdutoSegue" {
            let produtoViewController = segue.destination as! ProdutoViewController
            
            produtoViewController.nome = nome
            produtoViewController.descricao = descricao
            produtoViewController.quantidade = quantidade
            produtoViewController.preco = preco
            produtoViewController.foto = foto
        }
        
    }
    

}
