//
//  Lover.swift
//  EnumExos
//
//  Created by Carole TREM on 28/10/2024.
//

import SwiftUI

struct MyFavorites: View {
    
    @EnvironmentObject var FavoriteSongModel : FavoriteSongModel
    
    var body: some View {
        
        NavigationStack{

                ZStack{
                    Color.backColorBlue.ignoresSafeArea(edges:.top)
                    
                    if FavoriteSongModel.inFavorites.isEmpty {
                        Text("Vous n'avez pas encore de favoris")
                            .foregroundStyle(.white)
                            .font(.custom("Manrope-Regular", size: 18))
                    }else{
                        
                    VStack {
                        Text("Mes chansons favorites")
                            .foregroundStyle(.white)
                            .font(.custom("Manrope-Bold", size: 24))
                        
                        Spacer()
                        
                        VStack {
                            
                            ScrollView{
                                
                                ForEach (FavoriteSongModel.inFavorites, id:\.self) {favoriteSong in
                                    
                                    ZStack {
                                        Rectangle()
                                            .foregroundStyle(favoriteSong.albumColor)
                                            .opacity(0.7)
                                            .cornerRadius(10)
                                        
                                        HStack {
                                            Image(favoriteSong.albumCover)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 70, height: 70)
                                            VStack (alignment: .leading){
                                                Text(favoriteSong.name)
                                                    .font(.custom("Manrope-Bold", size: 16))
                                                Spacer()
                                                Text(favoriteSong.albumName)
                                                    .font(.custom("Manrope-Regular", size: 16))
                                            }.padding()
                                            Spacer()
                                            
                                            Button {
                                                
                                                FavoriteSongModel.isInFavorites(favoriteSong) ?
                                                FavoriteSongModel.removeFromFavorites(favoriteSong) :
                                                FavoriteSongModel.addToFavorites(favoriteSong)
                                                FavoriteSongModel.printInFavorites()
                                                
                                            } label: {
                                                
                                                FavoriteSongModel.isInFavorites(favoriteSong) ? Image(systemName: "heart.fill") : Image(systemName: "heart")
                                            }
                                            
                                        }.foregroundStyle(.white)
                                            .padding()
                                            .frame(width : 350, height : 70)
                                        
                                    }.frame(width : 350, height : 70)
                                }
                            }
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MyFavorites().environmentObject(FavoriteSongModel())
}
