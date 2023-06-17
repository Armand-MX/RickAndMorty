//
//  CharacterViewModel.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation
import RickNMortyAPI

struct CharacterViewModel: Identifiable {

    private var character: CharactersQuery.Data.Characters.Result
    
    init(character: CharactersQuery.Data.Characters.Result) {
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
