//
//  VTAgentsViewModel.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import Foundation

struct VTAgentsViewModel {
    
    let VTService = VALORANTService()
    var agentsList: [VTAgent]
    
    init(agentsList: [VTAgent]) {
        self.agentsList = agentsList
    }
    
    func fetchAgents() {
        let agentsFromService = VTService.fetchAgents()
        print(agentsFromService)
    }
}
