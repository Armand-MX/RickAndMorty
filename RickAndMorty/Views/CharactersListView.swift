//
//  CharactersListView.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 12/06/23.
//

import SwiftUI

struct CharactersListView: View {
    
    @StateObject private var viewModel = CharactersListViewModel()
    
    var body: some View {
        List (viewModel.characters){ character in
            HStack {
                AsyncImage(url: character.imageURL, scale: 3)
                Text(character.name)
            }
        }.task {
            await viewModel.getCharacters()
        }
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
