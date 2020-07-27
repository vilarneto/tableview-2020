//
//  Character.swift
//  got-tableview
//
//  Created by Vilar da Camara Neto on 23/07/20.
//  Copyright © 2020 Vilar da Camara Neto. All rights reserved.
//

import Foundation
import UIKit


class Character {
    var name: String
    var aliases: [String]
    var house: String
    var portrayedBy: [String]
    var cultures: [String]?
    var religions: [String]?
    var picture: UIImage

    init(name: String, aliases: [String] = [], house: String, portrayedBy: [String], cultures: [String]? = nil, religions: [String]? = nil) {
        self.name = name
        self.aliases = aliases
        self.house = house
        self.portrayedBy = portrayedBy
        self.cultures = cultures
        self.religions = religions
        self.picture = UIImage(named: self.name)!
    }
}


extension Character {
    static let all = [
        Character(name: "Arya Stark", aliases: ["Arry", "Lanna", "Mercy", "Hero of Winterfell"], house: "Stark", portrayedBy: ["Maisie Williams", "Hattie Gotobed", "Sabrina Bartlett", "David Bradley"], cultures: ["Northmen", "Braavosi"], religions: ["Many-Faced God", "Old Gods of the Forest", "Faith of the Seven"]),
        Character(name: "Benjen Stark", house: "Stark", portrayedBy: ["Joseph Mawle", "Matteo Elezi"], cultures: ["Northmen"], religions: ["Old Gods of the Forest"]),
        Character(name: "Bran Stark", aliases: ["The Three-Eyed Raven", "Little Lord", "Bran the Broken"], house: "Stark", portrayedBy: ["Isaac Hempstead-Wright"], cultures: ["Northmen"], religions: ["Old Gods of the Forest"]),
        Character(name: "Brienne of Tarth", aliases: ["Brienne the Beauty", "The Maid of Tarth", "Lady Brienne"], house: "Allies & Enemies", portrayedBy: ["Gwendoline Christie"], cultures: ["Andal"], religions: ["Faith of the Seven"]),
        Character(name: "Bronn", aliases: ["Ser Bronn of the Blackwater", "Cooper"], house: "Lannister", portrayedBy: ["Jerome Flynn"], cultures: ["Andal"]),
        Character(name: "Cersei Lannister", aliases: ["Cersei of the House Lannister, the First of Her Name", "Cersei the Lioness", "The mother of madness", "The Queen on the Iron Throne"], house: "Lannister", portrayedBy: ["Lena Headey", "Nell Williams"], cultures: ["Andal"]),
        Character(name: "Daenerys Targaryen", aliases: ["Daenerys of the House Targaryen, the First of Her Name", "Daenerys Stormborn", "Dany", "Mhysa", "The Queen Across the Sea", "The Silver Queen", "The Dragon Queen", "The Princess That Was Promised", "The Dragon's Daughter"], house: "Targaryen", portrayedBy: ["Emilia Clarke"], cultures: ["Valyrian"]),
        Character(name: "Davos Seaworth", aliases: ["The Onion Knight", "Ser Onion Knight", "Davos of Flea Bottom"], house: "Stark", portrayedBy: ["Liam Cunningham"], cultures: ["Andal"], religions: ["None", "Faith of the Seven"]),
        Character(name: "Edmure Tully", house: "Stark", portrayedBy: ["Tobias Menzies"], cultures: ["Andal"]),
        Character(name: "Ellaria Sand", house: "Targaryen", portrayedBy: ["Indira Varma"], cultures: ["Dornishmen"]),
        Character(name: "Euron Greyjoy", house: "Allies & Enemies", portrayedBy: ["Pilou Asbæk"], cultures: ["Ironborn"]),
        Character(name: "Gendry Baratheon", aliases: ["Clovis"], house: "Allies & Enemies", portrayedBy: ["Joe Dempsie"], cultures: ["Andal"]),
        Character(name: "Gilly", house: "Allies & Enemies", portrayedBy: ["Hannah Murray"], cultures: ["Free Folk"]),
        Character(name: "Gregor Clegane", aliases: ["The Mountain That Rides", "The Mountain", "Tywin Lannister's Mad Dog"], house: "Lannister", portrayedBy: ["Conan Stevens, Ian Whyte, Hafþór Júlíus Björnsson"], cultures: ["Andal"]),
        Character(name: "Grey Worm", aliases: ["Ser Worm"], house: "Targaryen", portrayedBy: ["Jacob Anderson"], cultures: ["Summer Islander"]),
        Character(name: "Jaime Lannister", aliases: ["Kingslayer", "Oathbreaker", "Man Without Honor", "Darnell"], house: "Lannister", portrayedBy: ["Nikolaj Coster-Waldau"], cultures: ["Andal"]),
        Character(name: "Joffrey Baratheon", aliases: ["Joffrey of Houses Baratheon and Lannister, the First of His Name", "The King on the Iron Throne", "The False King", "Joffrey the Illborn", "Joff", "The Boy King"], house: "Lannister", portrayedBy: ["Jack Gleeson"], cultures: ["Andal"], religions: ["Faith of the Seven"]),
        Character(name: "Jon Snow", aliases: ["Aegon Targaryen", "Lord Snow", "The Bastard of Winterfell", "King Crow", "The Prince That Was Promised", "The White Wolf"], house: "Stark", portrayedBy: ["Kit Harington"], cultures: ["Northmen"], religions: ["Old Gods of the Forest"]),
        Character(name: "Lyanna Mormont", house: "Stark", portrayedBy: ["Bella Ramsey"], cultures: ["Northmen"], religions: ["Old Gods of the Forest"]),
        Character(name: "Meera Reed", house: "Stark", portrayedBy: ["Ellie Kendrick"], cultures: ["Crannogmen"], religions: ["Old Gods of the Forest"]),
        Character(name: "Melisandre", aliases: ["Melisandre of Asshai", "Lady Melisandre", "The Red Woman", "The Red Witch"], house: "Allies & Enemies", portrayedBy: ["Carice van Houten", "Javier Botet"], cultures: ["Asshai'i"], religions: ["R'hllor, the Lord of Light"]),
        Character(name: "Missandei", house: "Targaryen", portrayedBy: ["Nathalie Emmanuel"], cultures: ["Naathi"]),
        Character(name: "Myrcella Baratheon", house: "Lannister", portrayedBy: ["Aimee Richardson", "Nell Tiger Free"], cultures: ["Andal"], religions: ["Faith of the Seven"]),
        Character(name: "Night King", house: "Allies & Enemies", portrayedBy: ["Richard Brake", "Vladimir Furdik"], cultures: ["White Walkers", "First Men"]),
        Character(name: "Olenna Tyrell", aliases: ["Olenna Redwyne", "The Queen of Thorns"], house: "Targaryen", portrayedBy: ["Dame Diana Rigg"], cultures: ["Andal"]),
        Character(name: "Petyr Baelish", aliases: ["Littlefinger"], house: "Allies & Enemies", portrayedBy: ["Aidan Gillen"], cultures: ["Andal"]),
        Character(name: "Podrick Payne", aliases: ["Pod"], house: "Allies & Enemies", portrayedBy: ["Daniel Portman"]),
        Character(name: "Qyburn", house: "Lannister", portrayedBy: ["Anton Lesser"]),
        Character(name: "Rhaegar Targaryen", aliases: ["The Last Dragon"], house: "Targaryen", portrayedBy: ["Wilf Scolding"], cultures: ["Valyrian"], religions: ["Faith of the Seven"]),
        Character(name: "Samwell Tarly", aliases: ["Samwell Tarly", "Sam", "Ser Piggy", "Prince Pork-chop", "Lady Piggy", "Sam the Slayer"], house: "Allies & Enemies", portrayedBy: ["John Bradley"], cultures: ["Andal"], religions: ["Old Gods of the Forest", "Faith of the Seven"]),
        Character(name: "Sandor Clegane", aliases: ["The Hound", "Dog"], house: "Allies & Enemies", portrayedBy: ["Rory McCann"], cultures: ["Andal"]),
        Character(name: "Sansa Stark", aliases: ["Little dove", "Little Bird", "Sansa Lannister", "Alayne", "Lady Stark", "Lady Bolton"], house: "Stark", portrayedBy: ["Sophie Turner"], cultures: ["Northmen"], religions: ["Old Gods of the Forest"]),
        Character(name: "Theon Greyjoy", aliases: ["Reek", "Little Theon"], house: "Targaryen", portrayedBy: ["Alfie Allen"], cultures: ["Ironborn"], religions: ["Drowned God"]),
        Character(name: "Tommen Baratheon", aliases: ["Tommen of the House Baratheon, the First of His Name", "The Boy King"], house: "Lannister", portrayedBy: ["Callum Wharry", "Dean-Charles Chapman"], cultures: ["Andal"], religions: ["Faith of the Seven"]),
        Character(name: "Tormund", aliases: ["Tormund Giantsbane"], house: "Stark", portrayedBy: ["Kristofer Hivju"], cultures: ["Free Folk"]),
        Character(name: "Tyrion Lannister", aliases: ["The Imp", "The Halfman", "The Little Lion", "Demon Monkey", "The Dwarf of Casterly Rock", "The Bloody Hand"], house: "Lannister", portrayedBy: ["Peter Dinklage"], cultures: ["Andal"], religions: ["Faith of the Seven"]),
        Character(name: "Tywin Lannister", house: "Lannister", portrayedBy: ["Charles Dance"], cultures: ["Andal"], religions: ["Faith of the Seven"]),
        Character(name: "Varys", aliases: ["The Spider", "The Eunuch", "Lord Varys"], house: "Targaryen", portrayedBy: ["Conleth Hill"], cultures: ["Lysene"]),
        Character(name: "Yara Greyjoy", house: "Targaryen", portrayedBy: ["Gemma Whelan"], cultures: ["Ironborn"], religions: ["Drowned God"]),
    ]
}
