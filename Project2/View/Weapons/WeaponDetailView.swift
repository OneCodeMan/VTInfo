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
                    .bold()
                
                Text(weapon.category)
                    .font(.title3)
                    .italic()
                    .foregroundColor(.gray)
                    
                AsyncImage(url: URL(string: weapon.skins[0].displayIcon ?? Constants.NO_IMAGE_FOUND_URL)!, content: { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, maxHeight: 100)
                    },
                       placeholder: {
                        ProgressView()
                            .frame(width: 100, height: 100)
                    })
                
                Spacer()
                
                // Cost
                HStack {
                    Text("COST")
                        .font(.system(size: 30))
                        .bold()
                    
                    Text(weapon.shopData?.cost.codingKey.stringValue ?? "")
                        .font(.system(size: 26, weight: .regular))
                }
                .padding(.bottom, 10)
                
                // Weapon Stats
                Group {
                    Text("WEAPON STATS")
                        .font(.title2)
                        .bold()
                        .padding()
                    
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
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
                        
                        VStack(alignment: .trailing) {
                            Text(String(weapon.weaponStats?.fireRate ?? 0.2))
                            Text(String(weapon.weaponStats?.magazineSize ?? 1))
                            Text(String(weapon.weaponStats?.runSpeedMultiplier ?? 0.2))
                            Text(String(weapon.weaponStats?.equipTimeSeconds ?? 0.2))
                            Text(String(weapon.weaponStats?.reloadTimeSeconds ?? 0.2))
                        }
                    }
                }
                
                Spacer()
                    .padding(.top, 25)
                
                // Skins
                Group {
                    Text("SKINS")
                        .font(.title2)
                        .bold()
                    VStack(alignment: .leading) {
                        ForEach(weapon.skins) { skin in
                            HStack {
                                CustomAsyncImage(imageURLString: skin.displayIcon ?? Constants.NO_IMAGE_FOUND_URL)
                                Text(skin.displayName)
                            }
                        }
                    }
                    .padding(.top, 20)
                }
            }
            .padding()
        }
    }
}

