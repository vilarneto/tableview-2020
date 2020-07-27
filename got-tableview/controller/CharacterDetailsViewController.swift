//
//  CharacterDetailsViewController.swift
//  got-tableview
//
//  Created by Vilar da Camara Neto on 27/07/20.
//  Copyright © 2020 Vilar da Camara Neto. All rights reserved.
//

import UIKit


class CharacterDetailsViewController: UIViewController {

    var character: Character?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.navigationItem.title = self.character?.name

        self.nameLabel.text = self.character?.name
        self.houseLabel.text = self.character?.house
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
