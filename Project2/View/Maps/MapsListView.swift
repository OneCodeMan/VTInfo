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
                            
                            MapsRowView(map: map)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(Constants.MAPS_NAV_TITLE)
        }
    }
}

struct MapsListView_Previews: PreviewProvider {
    static var previews: some View {
        MapsListView()
    }
}
