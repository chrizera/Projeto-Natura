//
//  ProdutoTableViewCell.swift
//  ProjetoNatura
//
//  Created by Mac VM on 07/09/17.
//  Copyright © 2017 2TDSS. All rights reserved.
//

import UIKit

class ProdutoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var quantidade: UILabel!
    @IBOutlet weak var precoAVista: UILabel!
    @IBOutlet weak var precoParcelado: UILabel!
    @IBOutlet weak var descricao: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
