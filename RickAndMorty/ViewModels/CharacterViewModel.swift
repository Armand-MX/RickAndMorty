//
//  CharacterViewModel.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation

struct CharacterViewModel: Identifiable {

    private var character: Character
    
    init(character: Character) {
        self.character = character
    }
    
    var id: Int {
        character.id
    }
    
    var name: String {
        character.name
    }
    
    var status: String {
        character.status
    }
}
