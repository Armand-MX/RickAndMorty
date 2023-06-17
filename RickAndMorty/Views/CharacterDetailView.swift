//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 17/06/23.
//

import SwiftUI

struct CharacterDetailView: View {
    
    var character: Character
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    RemoteImage(urlString: character.image)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                    VStack(alignment: .leading) {
                        Text(character.name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        StatusText(status: character.status)
                    }
                    Spacer()
                }
                PropertyText(key: "Gender", value: character.gender)
                PropertyText(key: "Species", value: character.species)
                if character.type.count > 0 {
                    PropertyText(key: "Type", value: character.type)
                }
                OriginCardView(origin: character.origin)
                LocationCardView(location: character.location)
                EpisodesCardView(episodes: character.episode)
            }
            .padding([.leading, .bottom, .trailing], 12.0)
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharacterDetailView(character: characterPreview).previewDevice("iPhone 14 Pro")
            CharacterDetailView(character: characterPreview).previewDevice("iPhone SE (3rd generation)")
        }
    }
}
