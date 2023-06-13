//
//  GraphQLService.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation

protocol ServiceProtocol {
    func getCharacters() async throws -> [Character]
}

class GraphQLService: ServiceProtocol {
    
    func getCharacters() async throws -> [Character] {
        // TODO: Implement GraphQL
        return [
            Character(id: 1, name: "name1", status: "alive", species: "human"),
            Character(id: 2, name: "name2", status: "alive", species: "human"),
            Character(id: 3, name: "name3", status: "alive", species: "human")
        ]
    }
}
