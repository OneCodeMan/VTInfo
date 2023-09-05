//
//  WeaponsListView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct WeaponsListView: View {
    @StateObject var weaponsViewModel = VTWeaponsViewModel()
    @State var selectedWeapon: VTWeapon?
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(weaponsViewModel.weaponsList) { weapon in
                        Button(action: { selectedWeapon = weapon }) {
                            HStack(alignment: .top, spacing: 10) {
                                WeaponsRowView(weapon: weapon)
                            }
                        }
                        
                    }
                    .sheet(item: $selectedWeapon) { weapon in
                        WeaponDetailView(weapon: weapon)
                        
                    }
                }
                .padding()
            }
            .navigationTitle(Constants.WEAPONS_NAV_TITLE)
        }
    }
}

struct WeaponsListView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponsListView()
    }
}
