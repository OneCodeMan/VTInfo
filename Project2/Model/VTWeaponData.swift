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

struct VTWeapon: Decodable {
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
}
