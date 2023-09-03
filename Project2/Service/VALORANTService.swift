//
//  VALORANTService.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-01.
//

import Foundation
import Alamofire

struct VALORANTService {
    
    func fetchAgents() {
        AF.request(Constants.AGENTS_URL).responseDecodable(of: VTAgentData.self) { response in
            switch response.result {
            case .success(let agentsRawData):
                let agentsDataFromResponse = agentsRawData.data
            case .failure(let error):
                print(response)
                print("Error: \(error.localizedDescription)")
            }
        }
        
    }
    
    func fetchMaps() {
        AF.request(Constants.MAPS_URL).responseDecodable(of: VTMapData.self) { response in
            switch response.result {
            case .success(let mapRawData):
                let mapData = mapRawData.data
                print(mapData)
            case .failure(let error):
                print(response)
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
    func fetchWeapons() {
        AF.request(Constants.WEAPONS_URL).responseDecodable(of: VTWeaponData.self) { response in
            switch response.result {
            case .success(let weaponRawData):
                let weaponData = weaponRawData.data
                print(weaponData)
            case .failure(let error):
                print(response)
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
}
