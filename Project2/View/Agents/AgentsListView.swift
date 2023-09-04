//
//  AgentView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct AgentsListView: View {
    
    @StateObject var agentsViewModel = VTAgentsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(agentsViewModel.agentsList) { agent in
                        AgentsRowView(agent: agent)
                    }
                }
                .padding()
            }
            .navigationTitle("Agents") // TODO: Make constant
        }
    }
}

struct AgentsListView_Previews: PreviewProvider {
    static var previews: some View {
        AgentsListView()
    }
}
