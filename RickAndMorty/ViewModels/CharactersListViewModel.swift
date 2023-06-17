//
//  CharactersListViewModel.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation
import RickNMortyAPI

@MainActor
class CharactersListViewModel: ObservableObject {
    
    private let webService: ServiceProtocol
    
    @Published var characters: [CharacterViewModel] = []
    
    init(webService: ServiceProtocol = GraphQLService.shared) {
        self.webService = webService
    }
    
    func getCharacters() async {
        GraphQLService.shared.apollo.fetch(query: CharactersQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let characters = graphQLResult.data?.characters?.results {
                    let results = characters.compactMap { $0 }
                    self.characters = results.map(CharacterViewModel.init)
                }
                
                if let errors = graphQLResult.errors {
                    print("Failure! Error: \(errors)")
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
}
