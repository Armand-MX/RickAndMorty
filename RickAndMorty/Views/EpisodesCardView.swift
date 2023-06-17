//
//  EpisodesCardView.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 17/06/23.
//

import SwiftUI

struct EpisodesCardView: View {
    
    var episodes: [Character.Episode]
    
    var body: some View {
        VStack {
            Text("Episodes")
                .font(.title3)
                .fontWeight(.semibold)
            Divider()
                .frame(width: 200, height: 5)
                .overlay(.orange)
            ForEach(episodes) { episode in
                HStack {
                    VStack(alignment: .leading) {
                        Text(episode.name)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                        Text(episode.episode)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Text(episode.airDate)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                }
                .padding(.all, 10)
                Divider()
            }
        }
        .background(Color.yellow)
        .cornerRadius(15)
        .padding(.all, 5)
    }
}

struct EpisodesCardView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesCardView(episodes: characterPreview.episode)
    }
}
