//
//  VALORANTService.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-01.
//

import Foundation
import Alamofire

struct VALORANTService {
    
    // ar-AE / de-DE / en-US / es-ES / es-MX / fr-FR / id-ID / it-IT / ja-JP / ko-KR / pl-PL / pt-BR / ru-RU / th-TH / tr-TR / vi-VN / zh-CN / zh-TW
    // use enums
    var localeRegion = "en-US"
    
    init() {
        guard let language = Locale.current.language.languageCode else { return }
    }
    
    func fetchAgents(completion: @escaping ([VTAgent]) -> Void) {
        AF.request(Constants.AGENTS_URL).responseDecodable(of: VTAgentData.self) { response in
            switch response.result {
            case .success(let agentsRawData):
                let agentsDataFromResponse = agentsRawData.data
                completion(agentsDataFromResponse)
            case .failure(let error):
                print(response)
                print("Error: \(error.localizedDescription)")
            }
        }
        
    }
    
    func fetchMaps(completion: @escaping ([VTMap]) -> Void) {
        AF.request(Constants.MAPS_URL).responseDecodable(of: VTMapData.self) { response in
            switch response.result {
            case .success(let mapRawData):
                let mapData = mapRawData.data
                completion(mapData)
            case .failure(let error):
                print(response)
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
    func fetchWeapons(completion: @escaping ([VTWeapon]) -> Void) {
        AF.request(Constants.WEAPONS_URL).responseDecodable(of: VTWeaponData.self) { response in
            switch response.result {
            case .success(let weaponRawData):
                let weaponData = weaponRawData.data
                completion(weaponData)
            case .failure(let error):
                print(response)
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
}
