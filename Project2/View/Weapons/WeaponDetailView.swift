//
//  WeaponDetailView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-05.
//

import SwiftUI

struct WeaponDetailView: View {
    let weapon: VTWeapon
    
    var body: some View {
        VStack {
            Text(weapon.displayName)
                .font(.largeTitle)
            
            Text(weapon.category)
        }
    }
}

