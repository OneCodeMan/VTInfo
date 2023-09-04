//
//  MapsRowView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct MapsRowView: View {
    let map: VTMap
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            
            CustomAsyncImage(imageURLString: map.splash)

            VStack(alignment: .leading, spacing: 5) {
                Text(map.displayName)
                
                Text(map.narrativeDescription ?? "")
                    .font(.caption)
            }
            .padding(.trailing, 10)
            .padding(.vertical, 5)
        }
    }
}
