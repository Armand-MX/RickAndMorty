//
//  Character.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 16/06/23.
//

import Foundation
import RickNMortyAPI

typealias CharacterData = CharactersQuery.Data.Characters

enum Status: String, Decodable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}


struct Character: Decodable, Identifiable {
    let id: String
    let name: String
    let status: Status
    let species: String
    let type: String
    let gender: String
    let image: String
    let origin: Origin
    let location: Location
    let episode: [Episode]
 
    init(_ character: CharacterData.Result?) {
        self.id = character?.id ?? ""
        self.name = character?.name ?? ""
        self.status = Status(rawValue: character?.status ?? Status.unknown.rawValue) ?? .unknown
        self.species = character?.species ?? ""
        self.type = character?.type ?? ""
        self.gender = character?.gender ?? ""
        self.image = character?.image ?? ""
        self.origin = Origin(character?.origin)
        self.location = Location(character?.location)
        self.episode = character?.episode.map(Episode.init) ?? []
    }
    
    struct Origin: Decodable {
        let id: String
        let name: String
        let type: String
        let dimension: String
        
        init(_ origin: CharacterData.Result.Origin?) {
            self.id = origin?.id ?? ""
            self.name = origin?.name ?? ""
            self.type = origin?.type ?? ""
            self.dimension = origin?.dimension ?? ""
        }
    }
    
    struct Location: Decodable {
        let id: String
        let name: String
        let type: String
        let dimension: String
        
        init(_ location: CharacterData.Result.Location?) {
            self.id = location?.id ?? ""
            self.name = location?.name ?? ""
            self.type = location?.type ?? ""
            self.dimension = location?.dimension ?? ""
        }
    }
    
    struct Episode: Decodable {
        let id: String
        let name: String
        let airDate: String
        let episode: String
        
        init(_ episode: CharacterData.Result.Episode?) {
            self.id = episode?.id ?? ""
            self.name = episode?.name ?? ""
            self.airDate = episode?.air_date ?? ""
            self.episode = episode?.episode ?? ""
        }
        
        enum CodingKeys: String, CodingKey {
            case id
            case name
            case airDate = "air_date"
            case episode
        }
    }
}
