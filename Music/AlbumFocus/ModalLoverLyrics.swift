//
//  LoverLyrics.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 14/11/2024.
//

import SwiftUI

struct LyricsModal: View {
    
    @Binding var dismissModal : Bool

    var playlistData  : Playlist
    var colorData : Color
    
    @Binding var selectedIndex : Int
    
    var body: some View {
        
        ZStack{
            
            colorData.ignoresSafeArea(edges: .top)
            
            ScrollView {
                VStack (spacing: 30){
                    Text(playlistData.songs[selectedIndex])
                    Text(playlistData.lyrics[selectedIndex])
                }.padding()
                    .font(.custom("Manrope-Bold", size: 20))
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    LyricsModal(dismissModal: .constant(false), playlistData: Playlist(songs: ["..."], lyrics: ["..."], favoriteSong : favoriteSong1), colorData : .white, selectedIndex: .constant(0))
}
                     
