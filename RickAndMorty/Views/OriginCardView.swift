//
//  OriginCardView.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 17/06/23.
//

import SwiftUI

struct OriginCardView: View {
    
    var origin: Character.Origin
    
    var body: some View {
        VStack {
            Text("Origin")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            CardText(key: "Name", value: origin.name)
            CardText(key: "Type", value: origin.type)
            CardText(key: "Dimension", value: origin.dimension)
        }
        .background(Color.red)
        .cornerRadius(15)
        .padding()
    }
}

struct OriginCardView_Previews: PreviewProvider {
    static var previews: some View {
        OriginCardView(origin: characterPreview.origin)
    }
}
