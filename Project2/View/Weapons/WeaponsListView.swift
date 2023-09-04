//
//  WeaponsListView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct WeaponsListView: View {
    @StateObject var weaponsViewModel = VTWeaponsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(weaponsViewModel.weaponsList) { weapon in
                        HStack(alignment: .top, spacing: 10) {
                            WeaponsRowView(weapon: weapon)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Weapons") // TODO: Make constant
        }
    }
}

struct WeaponsListView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponsListView()
    }
}
