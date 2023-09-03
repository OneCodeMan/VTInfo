//
//  VTAgentsViewModel.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import Foundation

class VTAgentsViewModel: ObservableObject {
    
    let VTService = VALORANTService()
    @Published var agentsList: [VTAgent] = []
    
    init() {
        fetchAgents()
    }
    
    func fetchAgents() {
        VTService.fetchAgents { [weak self] agents in
            guard let strongSelf = self else {
                return
            }
            strongSelf.agentsList = agents
        }
    }
}
