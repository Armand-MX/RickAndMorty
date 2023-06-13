//
//  Character.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import Foundation

struct Character: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
}
