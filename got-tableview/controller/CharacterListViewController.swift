//
//  CharacterListViewController.swift
//  got-tableview
//
//  Created by Vilar da Camara Neto on 27/07/20.
//  Copyright © 2020 Vilar da Camara Neto. All rights reserved.
//

import UIKit


class CharacterListViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var characterTableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Character.all.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Chamando método para montagem de célula, seção \(indexPath.section), linha \(indexPath.row)")

        let character = Character.all[indexPath.row]

        // 1. Buscar uma célula no formato “GoT Character”
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoT Character", for: indexPath) as! CharacterTableViewCell

        // 2. Preencher os dados dentro da célula
        cell.fillCellData(character)

        // 3. Retornar para o iOS
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = self.characterTableView.indexPathForSelectedRow else {
            return
        }

        let character = Character.all[indexPath.row]
        let characterDetailsViewController = segue.destination as! CharacterDetailsViewController

        characterDetailsViewController.character = character
    }

}
