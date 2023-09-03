//
//  MapsListView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

struct MapsListView: View {
    @StateObject var mapsViewModel = VTMapsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(mapsViewModel.mapsList) { map in
                        HStack(alignment: .top, spacing: 10) {
                            
                            // TODO: Get the image URL properly.
                            Image("potato")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 5))

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
                .padding()
            }
            .navigationTitle("Maps")
        }
    }
}

struct MapsListView_Previews: PreviewProvider {
    static var previews: some View {
        MapsListView()
    }
}
