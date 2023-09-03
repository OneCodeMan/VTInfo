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
    
    enum CodingKeys: String, CodingKey {
        case uuid
        case displayName
        case description
        case displayIcon
        case bustPortrait
        case role
        case abilities
    }
    
    // `decodeIfPresent` takes care of null values with some keys.
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uuid = try values.decode(String.self, forKey: .uuid)
        displayName = try values.decode(String.self, forKey: .displayName)
        description = try values.decode(String.self, forKey: .description)
        displayIcon = try values.decode(String.self, forKey: .displayIcon)
        bustPortrait = try values.decodeIfPresent(String.self, forKey: .bustPortrait)
        role = try values.decodeIfPresent(VTRole.self, forKey: .role)
        abilities = try values.decode([VTAbility].self, forKey: .abilities)
        
    }
    
}
