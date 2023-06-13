//
//  CharactersListViewModel.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation

@MainActor
class CharactersListViewModel: ObservableObject {
    
    private let webService: ServiceProtocol
    
    @Published var characters: [CharacterViewModel] = []
    
    init(webService: ServiceProtocol = GraphQLService()) {
        self.webService = webService
    }
    
    func getCharacters() async {
        do {
            let characters = try await webService.getCharacters()
            self.characters = characters.map(CharacterViewModel.init)
        } catch {
            print(error)
        }
    }
}
