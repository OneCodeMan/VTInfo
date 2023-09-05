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
        VStack {
            Text(agent.displayName)
                .font(.largeTitle)
            
            Text(agent.description)
                .font(.caption)
        }
    }
}

