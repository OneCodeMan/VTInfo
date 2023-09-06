//
//  AgentView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct AgentsListView: View {
    
    @StateObject var agentsViewModel = VTAgentsViewModel()
    @State var selectedAgent: VTAgent?
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(agentsViewModel.agentsList) { agent in
                        Button(action: { selectedAgent = agent }) {
                            AgentsRowView(agent: agent)
                        }
                    }
                    .sheet(item: $selectedAgent) { agent in
                        AgentDetailView(agent: agent)
                    }
                }
                .padding()
            }
            .navigationTitle(Constants.AGENTS_NAV_TITLE)
        }.navigationBarTitleTextColor(Color.VT_RED)
    }
}

struct AgentsListView_Previews: PreviewProvider {
    static var previews: some View {
        AgentsListView()
    }
}
