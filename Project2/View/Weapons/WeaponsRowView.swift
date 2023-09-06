//
//  WeaponsRowView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-04.
//

import SwiftUI

struct WeaponsRowView: View {
    let weapon: VTWeapon
    
    var body: some View {
        CustomAsyncImage(imageURLString: weapon.skins[0].displayIcon ?? Constants.NO_IMAGE_FOUND_URL)

        VStack(alignment: .leading, spacing: 5) {
            Text(weapon.displayName)
                .font(.title3)
            
            Text(weapon.category)
                .font(.caption)
                .italic()
        }
        .padding(.trailing, 10)
        .padding(.vertical, 5)
        .foregroundColor(.VT_BLACK)
    }
}
