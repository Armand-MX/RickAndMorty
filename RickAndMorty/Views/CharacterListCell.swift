//
//  CharacterListCell.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 16/06/23.
//

import SwiftUI
import RickNMortyAPI

struct CharacterListCell: View {
    
    let character: Character?

    var body: some View {
        HStack {
            RemoteImage(urlString: character?.image ?? "")
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text(character!.name)
                    .bold()
                Text(character!.status.rawValue)
                    .italic()
                    .foregroundColor(getStatusColorFor(status: Status(rawValue: character!.status.rawValue)!))
            }
        }
    }
    
    func getStatusColorFor(status: Status) -> Color {
        switch status {
        case .alive:
            return Color.green
        case .dead:
            return Color.red
        default:
            return Color.gray
        }
    }
}

struct CharacterListCell_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListCell(character: characterPreview)
    }
}
