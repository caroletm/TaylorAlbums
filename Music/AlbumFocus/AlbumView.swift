//
//  Lover.swift
//  EnumExos
//
//  Created by Carole TREM on 28/10/2024.
//

import SwiftUI

struct AlbumView: View {
    
    @State var showModal : Bool = false
    @State var selectedIndex: Int = 0
//    @Binding var isFavorite : Bool
    
    let albumData  : Taylor
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [albumData.color, albumData.color2], startPoint: .top, endPoint: .bottom).ignoresSafeArea(edges: .top)
            
            VStack{
                HStack{
                    Image(albumData.cover)
                        .resizable()
                        .scaledToFit()
                        .frame(width:180 , height:  180)
                        .foregroundStyle(.blue)
                        .cornerRadius(10)
                    VStack{
                        Text(albumData.name)
                            .font(.custom("Manrope-Bold", size: 26))
                        Text("\(albumData.year)")
                            .font(.custom("Manrope-Regular", size: 16))
                        Text(albumData.genre)
                            .font(.custom("Manrope-Regular", size: 16))
                        Text(albumData.producers)
                            .font(.custom("Manrope-Regular", size: 14))
                            .multilineTextAlignment(.center)
                    }
                    .foregroundColor(.white)
                }.padding()
                    .frame(width : 350, height: 200)
                
                ScrollView {
                    
                    Text(albumData.description)
                        .padding()
                        .font(.custom("Manrope-Regular", size: 16))
                        .foregroundStyle(.white)
                    
                    VStack(alignment:.leading) {
                        
                        Text("Tracklist ")
                            .font(.custom("Manrope-Bold", size: 26))
                        
                        ForEach(Array(albumData.playlist.songs.enumerated()), id: \.element) { index, song in
                            
                            SongListView(
                                showModal : $showModal,
                                selectedIndex: $selectedIndex,
//                                isFavorite : false,
                                index: index, song: song,
                                songFavorite : FavoriteSongs(name: song, albumName: albumData.name, albumCover: albumData.cover, albumColor: albumData.color))
                            
                        }.sheet(isPresented: $showModal) {LyricsModal(dismissModal: $showModal, playlistData : albumData.playlist, colorData : albumData.color, selectedIndex : $selectedIndex)
                            
                                .presentationDetents([.medium, .large])
                                .presentationDragIndicator(.visible)
                                .opacity(0.5)
                            
                            Spacer()
                            
                        } .padding(5)
                        
                    }.foregroundStyle(.white)
                    
                }.padding()
            }
        }
    }
}

    #Preview {
        AlbumView(/*isFavorite: .constant(false),*/ albumData: lover).environmentObject(FavoriteSongModel())
    }

struct SongListView: View {
    
    @Binding var showModal : Bool
    @Binding var selectedIndex: Int
//    @State var isFavorite : Bool = false
    var index : Int
    var song : String
    
    @EnvironmentObject var favoriteSongModel : FavoriteSongModel
    
    var songFavorite : FavoriteSongs
    
    var body: some View {
        
        HStack{
            
            Button {
                showModal.toggle()
                selectedIndex = index
                
            } label : {
                HStack {
                    Text("\(index + 1)")
                        .fontWeight(.bold)
                    Text(song)
                        .font(.custom("Manrope-Regular", size: 20))
                        .frame(width: 290, height: 40, alignment: .leading)
                        .multilineTextAlignment(.leading)
                }
            }
    
            Spacer()
            
            Button {
                
                favoriteSongModel.isInFavorites(songFavorite) ?
                favoriteSongModel.removeFromFavorites(songFavorite):
                favoriteSongModel.addToFavorites(songFavorite)
                favoriteSongModel.printInFavorites()
                
            } label: {
                
                favoriteSongModel.isInFavorites(songFavorite) ? Image(systemName: "heart.fill") : Image(systemName: "heart")
            }
        }
    }
}
