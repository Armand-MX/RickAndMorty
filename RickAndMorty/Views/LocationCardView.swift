//
//  LocationCardView.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 17/06/23.
//

import SwiftUI

struct LocationCardView: View {
    
    var location: Character.Location
    
    var body: some View {
        VStack {
            Text("Location")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            CardText(key: "Name", value: location.name)
            CardText(key: "Type", value: location.type)
            CardText(key: "Dimension", value: location.dimension)
        }
        .background(Color.orange)
        .cornerRadius(15)
        .padding(.all, 5)
    }
}

struct LocationCardView_Previews: PreviewProvider {
    static var previews: some View {
        LocationCardView(location: characterPreview.location)
    }
}
