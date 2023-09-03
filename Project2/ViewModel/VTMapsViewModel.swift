//
//  VTMapsViewModel.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import Foundation

class VTMapsViewModel: ObservableObject {
    
    let VTService = VALORANTService()
    @Published var mapsList: [VTMap] = []
    
    init() {
        fetchMaps()
    }
    
    private func fetchMaps() {
        VTService.fetchMaps{ [weak self] maps in
            guard let strongSelf = self else {
                return
            }
            strongSelf.mapsList = maps
        }
    }
}
