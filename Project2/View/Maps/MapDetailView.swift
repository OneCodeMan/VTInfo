//
//  MapDetailView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-05.
//

import SwiftUI

struct MapDetailView: View {
    let map: VTMap
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Spacer()
                
                Text(map.displayName)
                    .font(.largeTitle)
                    .bold()
                
                AsyncImage(url: URL(string: map.splash)!, content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                },
                   placeholder: {
                    ProgressView()
                        .frame(width: 100, height: 100)
                })
                
                Text(map.tacticalDescription ?? "")
                    .font(.subheadline)
                
                Text(map.narrativeDescription ?? "")
                    .font(.caption)
                    .padding()
            }
        }
    }
}
