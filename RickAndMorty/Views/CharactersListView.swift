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
        NavigationView {
            List (viewModel.characters){ character in
                NavigationLink(destination: CharacterDetailView(character: character)) {
                    CharacterListCell(character: character)
                }
            }.task {
                await viewModel.getCharacters()
            }
            .navigationBarTitle("Characters")
        }
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharactersListView()
            CharactersListView().previewDevice("iPhone SE (3rd generation)")
        }
    }
}
