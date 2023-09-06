//
//  WeaponDetailView.swift
//  Project2
//
//  Created by Dave Gumba on 2023-09-05.
//

import SwiftUI

struct WeaponDetailView: View {
    let weapon: VTWeapon
    
    var body: some View {
        ScrollView {
            VStack {
                
                Text(weapon.displayName)
                    .font(.largeTitle)
                
                Text(weapon.category)
                    .font(.title3)
                    .italic()
                    
                    AsyncImage(url: URL(string: weapon.skins[0].displayIcon ?? "")!, content: { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, maxHeight: 200)
                    },
                       placeholder: {
                        ProgressView()
                            .frame(width: 100, height: 100)
                    })
                
                Spacer()
                
                // Cost
                HStack {
                    Text("COST")
                        .font(.system(size: 30, weight: .heavy))
                    
                    Text(weapon.shopData?.cost.codingKey.stringValue ?? "")
                        .font(.system(size: 26, weight: .regular))
                }
                .padding(.bottom, 10)
                
                // Weapon Stats
                HStack {
                    VStack {
                        Text("FIRE RATE")
                            .font(.system(size: 20, weight: .medium))
                        Text("BULLETS")
                            .font(.system(size: 20, weight: .medium))
                        Text("RUN SPEED MULTIPLIER")
                            .font(.system(size: 20, weight: .medium))
                        Text("EQUIP TIME")
                            .font(.system(size: 20, weight: .medium))
                        Text("RELOAD TIME")
                            .font(.system(size: 20, weight: .medium))
                    }
                    .frame(alignment: .leading)
                    
                    VStack {
                        Text(String(weapon.weaponStats?.fireRate ?? 0.2))
                        Text(String(weapon.weaponStats?.magazineSize ?? 1))
                        Text(String(weapon.weaponStats?.runSpeedMultiplier ?? 0.2))
                        Text(String(weapon.weaponStats?.equipTimeSeconds ?? 0.2))
                        Text(String(weapon.weaponStats?.reloadTimeSeconds ?? 0.2))
                    }
                    .frame(alignment: .trailing)
                }
                
            }
            .padding()
        }
    }
}

