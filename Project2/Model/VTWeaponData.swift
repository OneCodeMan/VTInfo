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
    
    struct VTSkins: Decodable, Identifiable {
        let id = UUID()
        
        var uuid: String
        var displayName: String
        var displayIcon: String?
    }
    
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
        
        // JSON gives us `EFEquipabbleCategory::Heavy`, we only want `Heavy`
        let categoryAndPenetrationDelimiter = "::"
        let unparsedCategory = try values.decode(String.self, forKey: .category)
        let parsedCategory = unparsedCategory.components(separatedBy: categoryAndPenetrationDelimiter).last ?? ""
        category = parsedCategory
        
        weaponStats = try values.decodeIfPresent(VTWeaponStats.self, forKey: .weaponStats)
        
        if weaponStats == nil {
            weaponStats = VTWeaponStats(magazineSize: 1, runSpeedMultiplier: 0.1, equipTimeSeconds: 0.1, reloadTimeSeconds: 0.1, wallPenetration: "N/A")
        }
        
        shopData = try values.decodeIfPresent(VTShopData.self, forKey: .shopData)
        
        if shopData == nil {
            shopData = VTShopData(cost: 1, category: "N/A", categoryText: "N/A")
        }
        
        skins = try values.decode([VTSkins].self, forKey: .skins)
    }
}
