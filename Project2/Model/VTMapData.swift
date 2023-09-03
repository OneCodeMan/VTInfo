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
}
