//
//  VTMapData.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import Foundation

struct VTMapData: Decodable {
    
    var data: [VTMap]

}

struct VTMap: Decodable, Identifiable {
    
    let id = UUID()
    
    var uuid: String
    var displayName: String
    var narrativeDescription: String?
    var tacticalDescription: String?
    var displayIcon: String?
    var splash: String
    
    enum CodingKeys: String, CodingKey {
        case uuid
        case displayName
        case narrativeDescription
        case tacticalDescription
        case displayIcon
        case splash
    }
    
    // `decodeIfPresent` takes care of null values with some keys.
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uuid = try values.decode(String.self, forKey: .uuid)
        displayName = try values.decode(String.self, forKey: .displayName)
        narrativeDescription = try values.decodeIfPresent(String.self, forKey: .narrativeDescription)
        tacticalDescription = try values.decodeIfPresent(String.self, forKey: .tacticalDescription)
        displayIcon = try values.decodeIfPresent(String.self, forKey: .displayIcon)
        splash = try values.decode(String.self, forKey: .splash)
        
    }
}
