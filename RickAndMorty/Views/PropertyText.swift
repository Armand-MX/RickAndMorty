//
//  PropertyText.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 17/06/23.
//

import SwiftUI

struct PropertyText: View {
    
    var key: String
    var value: String
    
    var body: some View {
        HStack {
            Text(key + ": ")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.leading, 10)
            Text(value)
                .font(.system(size: 20))
                .fontWeight(.light)
                .padding(.trailing, 10)
            Spacer()
        }
        .minimumScaleFactor(0.5)
    }
}

struct PropertyText_Previews: PreviewProvider {
    static var previews: some View {
        PropertyText(key: "Key", value: "Value")
    }
}
