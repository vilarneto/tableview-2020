//
//  CharacterTableViewCell.swift
//  got-tableview
//
//  Created by Vilar da Camara Neto on 27/07/20.
//  Copyright © 2020 Vilar da Camara Neto. All rights reserved.
//

import UIKit


class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func fillCellData(_ character: Character) {
        self.nameLabel.text = character.name
        self.houseLabel.text = character.house
        self.picture.image = character.picture

        if character.name == "Arya Stark" {
            self.nameLabel.textColor = .red
        } else {
            self.nameLabel.textColor = .black
        }
    }

}
