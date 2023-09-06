//
//  AgentDetailView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-04.
//

import SwiftUI

struct AgentDetailView: View {
    let agent: VTAgent
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Spacer()
                
                CustomAsyncImage(imageURLString: agent.displayIcon)
                
                Text(agent.displayName)
                    .font(.largeTitle)
                    .bold()
                
                Text(agent.role?.displayName ?? "")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.gray)
                
                Text(agent.description)
                    .font(.caption)
                
                Spacer()
                
                // Abilities
                Text(Constants.ABILITIES_SECTION)
                    .font(.title2)
                
                ForEach(agent.abilities) { ability in
                    VStack {
                        Text(ability.displayName)
                            .font(.subheadline)
                            .padding(5)
                            .bold()
                        
                        Text(ability.description)
                            .font(.caption)
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

