//
//  Lover.swift
//  EnumExos
//
//  Created by Carole TREM on 28/10/2024.
//

import SwiftUI

struct AlbumView: View {
    
    @State var showModal : Bool = false
    let albumData  : Taylor
    
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [albumData.color, albumData.color2], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack{
                HStack{
                    Image(albumData.cover)
                        .resizable()
                        .scaledToFit()
                        .frame(width:200 , height:  200)
                        .foregroundStyle(.blue)
                        .cornerRadius(10)
                    VStack{
                        Text(albumData.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Text("\(albumData.year)")
                            .font(.subheadline)
                        Text(albumData.genre)
                            .font(.subheadline)
                        Text(albumData.producers)
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                
                ScrollView {
                    
                    Text(albumData.description)
                        .padding()
                        .font(.subheadline)
                        .foregroundStyle(.white)
                      
                    
                    VStack(alignment:.leading, spacing : 10) {
                        
                        Text("Playlist ")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        ForEach(Array(loverAlbum.songs.enumerated()), id: \.element) { index, song in
                            
                            Button {
                                showModal.toggle()
                            } label : {
                                HStack (alignment : .top) {
                                    Text("\(index + 1)")
                                        .fontWeight(.bold)
                                    Text(song)
                                        .font(.title2)
                                }
                            }
                        }
                        Spacer()
                        
                    } .padding(10)
                        .foregroundStyle(.white)
                }
                
            }.padding()
        }.sheet(isPresented: $showModal) { LoverLyricsModal(dismissModal: $showModal)
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
                .opacity(0.5)
        }
    }
}

