//
//  CustomAsyncImage.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-04.
//

import SwiftUI

struct CustomAsyncImage: View {
    let imageURLString: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageURLString)!, content: { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 100, maxHeight: 100)
        },
           placeholder: {
            ProgressView()
                .frame(width: 100, height: 100)
        })
    }
}

struct CustomAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomAsyncImage(imageURLString: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png")
    }
}
