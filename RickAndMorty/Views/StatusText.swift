//
//  StatusText.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 17/06/23.
//

import SwiftUI

struct StatusText: View {
    
    var status: Status
    
    var body: some View {
        Text(status.rawValue)
            .italic()
            .foregroundColor(getStatusColorFor(status: Status(rawValue: status.rawValue)!))
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

struct StatusText_Previews: PreviewProvider {
    static var previews: some View {
        StatusText(status: .alive)
    }
}
