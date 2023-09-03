//
//  VTWeaponsViewModel.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import Foundation

class VTWeaponsViewModel: ObservableObject {
    
    let VTService = VALORANTService()
    @Published var weaponsList: [VTWeapon] = []
    
    init() {
        fetchWeapons()
    }
    
    private func fetchWeapons() {
        VTService.fetchWeapons{ [weak self] weapons in
            guard let strongSelf = self else {
                return
            }
            strongSelf.weaponsList = weapons
        }
    }
}
