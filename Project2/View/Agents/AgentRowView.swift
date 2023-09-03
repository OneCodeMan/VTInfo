//
//  AgentRowView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-03.
//

import SwiftUI

// TODO: Modify and use
struct AgentRowView: View {
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            
            Image("potato")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 5))

            VStack(alignment: .leading, spacing: 5) {
                Text("The actual row")
                
                Text("Swagger of a champion.")
                    .font(.caption)
            }
            .padding(.trailing, 10)
            .padding(.vertical, 5)
        }
    }
}

