//
//  VTWeaponData.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import Foundation

struct VTWeaponData: Decodable {
    
    var data: [VTWeapon]
}

struct VTWeapon: Decodable, Identifiable {
    let id = UUID()
    
    var uuid: String
    var displayName: String
    var category: String
    
    var weaponStats: VTWeaponStats?
    var shopData: VTShopData?
    var skins: [VTSkins]
    
    struct VTWeaponStats: Decodable {
        var fireRate: Double?
        var magazineSize: Int
        var runSpeedMultiplier: Double
        var equipTimeSeconds: Double
        var reloadTimeSeconds: Double
        var wallPenetration: String
    }
    
    struct VTShopData: Decodable {
        var cost: Int
        var category: String
        var categoryText: String
    }
    
    struct VTSkins: Decodable {
        var uuid: String
        var displayName: String
        var displayIcon: String?
    }
    
    // TODO: EDIT FOR THE RIGHT THINGS
    enum CodingKeys: String, CodingKey {
        case uuid
        case displayName
        case category
        case weaponStats
        case shopData
        case skins
    }
    
    // `decodeIfPresent` takes care of null values with some keys.
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uuid = try values.decode(String.self, forKey: .uuid)
        displayName = try values.decode(String.self, forKey: .displayName)
        category = try values.decode(String.self, forKey: .category)
        weaponStats = try values.decodeIfPresent(VTWeaponStats.self, forKey: .weaponStats)
        shopData = try values.decodeIfPresent(VTShopData.self, forKey: .shopData)
        skins = try values.decode([VTSkins].self, forKey: .skins)
    }
}
