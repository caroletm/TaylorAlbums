//
//  Untitled.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 13/11/2024.
//

import SwiftUI

struct TaylorAlbums: View {
    
    var body: some View {
        
        ZStack {
            
            Color.greige.ignoresSafeArea()
            
            VStack(alignment: .leading){
                
                Text("TAYLOR SWIFT ALBUMS")
                    .font(.title)
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                
                ScrollView{
                    
                    ForEach (taylorAlbumsCovers, id:\.self) { album in
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 350, height : 120)
                                .cornerRadius(10)
                                .foregroundStyle(album.color)
                            
                            HStack {
                                //
                                Text(album.name)
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Spacer()
                                Image(album.cover)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(5)
                            }.padding(10)
                                .frame(width: 350, height : 120)
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
