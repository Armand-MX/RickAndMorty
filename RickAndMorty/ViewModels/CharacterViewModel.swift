//
//  CharacterViewModel.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation
import RickNMortyAPI

/// The status of the character ('Alive', 'Dead' or 'unknown').
enum Status: String {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}



struct CharacterViewModel: Identifiable {

    private var character: Character
    
    init(character: Character) {
        self.character = character
    }
    
    var id: Int {
        Int(character.id ?? "") ?? 0
    }
    
    var name: String {
        character.name ?? ""
    }
    
    var imageURL: URL? {
        URL(string: character.image ?? "")
    }
    
    var status: String {
        character.status ?? ""
    }
}
