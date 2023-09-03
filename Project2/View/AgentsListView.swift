//
//  AgentView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct AgentsListView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    Text("Hi")
                }
                .padding()
            }
            .navigationTitle("Agents")
        }
    }
}

struct AgentsListView_Previews: PreviewProvider {
    static var previews: some View {
        AgentsListView()
    }
}
