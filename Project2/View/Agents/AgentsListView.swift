//
//  AgentView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct AgentsListView: View {
    
    @StateObject var agentsViewModel = VTAgentsViewModel()
    @State var presentAgentDetailView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(agentsViewModel.agentsList) { agent in
                        Button(action: { self.presentAgentDetailView.toggle()}) {
                            AgentsRowView(agent: agent)
                                .frame(alignment: .leading)
                        }.sheet(isPresented: $presentAgentDetailView) {
                            AgentDetailView(agent: agent)
                        }
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
//
//Button(action: { self.isPresented4.toggle() }) {
//                        Text("Show 🍏")
//                    }.sheet(isPresented: $isPresented4) {
//                        Text("🍎")
//                    }
