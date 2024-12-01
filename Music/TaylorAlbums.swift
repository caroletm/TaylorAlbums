//
//  Untitled.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 13/11/2024.
//

import SwiftUI

struct TaylorAlbums: View {
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                
                Color.backColorBlue.ignoresSafeArea(edges: .top)
                
                VStack{
                    
                    Text("TAYLOR SWIFT ALBUMS")
                        .font(.custom("FjallaOne-Regular", size: 26))
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                    
                    ScrollView{
                        
                        ForEach (taylorAlbums, id:\.self) { album in
                            
                            NavigationLink(destination: AlbumView(albumData : album)) {
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 350, height : 100)
                                        .foregroundStyle(album.color)
                                        .cornerRadius(10)
                                    
                                    HStack {
                                        Text(album.name)
                                            .foregroundStyle(.white)
                                            .font(.custom("Manrope-Regular", size: 24))
                                            .font(.title2)
                                            .fontWeight(.bold)
                                        Spacer()
                                        Image(album.cover)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 90)
                                            .cornerRadius(5)
                                        
                                    }.padding()
                                        .cornerRadius(5)
                                        .frame(width: 350, height : 100)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
TaylorAlbums()
}
