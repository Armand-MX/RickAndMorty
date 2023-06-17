//
//  CardText.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 17/06/23.
//

import SwiftUI

struct CardText: View {
    var key: String
    var value: String
    
    var body: some View {
        HStack {
            Text(key + ": ")
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.leading, 10)
            
            Text(value)
                .font(.system(size: 15))
                .fontWeight(.light)
                .foregroundColor(Color.black)
                .padding(.trailing, 10)
            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 5, bottom: 6, trailing: 5))
        .minimumScaleFactor(0.5)
        
    }
}

struct CardText_Previews: PreviewProvider {
    static var previews: some View {
        CardText(key: "Key", value: "Value")
    }
}
