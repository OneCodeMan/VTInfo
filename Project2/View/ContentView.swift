//
//  ContentView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-01.
//

import SwiftUI

struct ContentView: View {
    let VTService: VALORANTService
    
    var body: some View {
        TabView {
            // Agents Tab
            AgentsListView()
                .tabItem {
                    Label(Constants.AGENTS_NAV_TITLE, systemImage: Constants.AGENTS_TAB_BAR_IMAGE)
                }
            
            // Maps Tab
            MapsListView()
                .tabItem {
                    Label(Constants.MAPS_NAV_TITLE, systemImage: Constants.MAPS_TAB_BAR_IMAGE)
                }
            
            // Weapons Tab
            WeaponsListView()
                .tabItem {
                    Label(Constants.WEAPONS_NAV_TITLE, systemImage: Constants.WEAPONS_TAB_BAR_IMAGE)
                }
        }
        .tint(Color.VT_RED) // How to change selected tab item colour
        .
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(VTService: VALORANTService())
    }
}
