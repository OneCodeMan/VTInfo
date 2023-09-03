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
            AgentsListView()
                .tabItem {
                    Label("Agents", systemImage: "list.dash")
                }
            AgentRowView()
                .tabItem {
                    Label("Agents", systemImage: "square.and.pencil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(VTService: VALORANTService())
    }
}
