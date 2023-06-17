//
//  GraphQLService.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation
import Apollo

protocol ServiceProtocol {
    var apollo: ApolloClient { get set }
}

class GraphQLService: ServiceProtocol {
    
    static let shared = GraphQLService()
    
    lazy var apollo: ApolloClient = {
        guard let url = URL(string: "https://rickandmortyapi.com/graphql") else {
            fatalError("Invalid URL")
        }
        return ApolloClient(url: url)
    }()
    
    private init() {}
}
