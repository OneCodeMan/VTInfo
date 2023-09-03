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
                        HStack(alignment: .top, spacing: 10) {
                            
                            Image("potato")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            VStack(alignment: .leading, spacing: 5) {
                                Text(agent.displayName)
                                
                                Text(agent.description)
                                    .font(.caption)
                            }
                            .padding(.trailing, 10)
                            .padding(.vertical, 5)
                        }
                    }
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
