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
                    // TODO: Make constant
                    Label("Agents", systemImage: "list.dash")
                }
            
            // Maps Tab
            MapsListView()
                .tabItem {
                    // TODO: Make constant
                    Label("Maps", systemImage: "square.and.pencil")
                }
            
            // Weapons Tab
            WeaponsListView()
                .tabItem {
                    // TODO: Make constant
                    Label("Weapons", systemImage: "circle")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(VTService: VALORANTService())
    }
}
