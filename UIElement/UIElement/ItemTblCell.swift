//
//  ItemTblCell.swift
//  UIElement
//
//  Created by Shakir Husain on 14/10/23.
//

import UIKit

class ItemTblCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
