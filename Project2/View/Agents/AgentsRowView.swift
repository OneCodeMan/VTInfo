//
//  AgentRowView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct AgentsRowView: View {
    
    let agent: VTAgent
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            
            CustomAsyncImage(imageURLString: agent.displayIcon)

            VStack(alignment: .leading, spacing: 5) {
                Text(agent.displayName)
                    .frame(alignment: .leading)
                    .font(.title2)
                
                Text(agent.description)
                    .font(.caption)
            }
            .padding(.trailing, 10)
            .padding(.vertical, 5)
            .tint(.VT_BLACK)
        }
    }
}

