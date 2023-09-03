//
//  VTAgent.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-02.
//

import Foundation

struct VTAgentData: Decodable {
    
    var data: [VTAgent]
}

struct VTAgent: Decodable, Identifiable {
    
    let id = UUID()

    var uuid: String
    var displayName: String
    var description: String
    var displayIcon: String
    var bustPortrait: String?
    
    var role: VTRole?
    var abilities: [VTAbility]
        
    struct VTRole: Decodable {
        var uuid: String
        var displayName: String
        var description: String
        var displayIcon: String
    }

    struct VTAbility: Decodable {
        var slot: String
        var displayName: String
        var description: String
        var displayIcon: String?
    }
    
}
