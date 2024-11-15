//
//  LoverLyrics.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 14/11/2024.
//

import SwiftUI

struct LoverLyricsModal: View {
    
    @Binding var dismissModal : Bool
    
    var body: some View {
        
        ZStack{
            
            Color.loverPink.ignoresSafeArea()
            
            ScrollView {
                VStack (spacing: 30){
                    Text(loverAlbum.songs[0])
                    Text(loverAlbum.lyrics[0])
                }.padding()
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
    }
}
#Preview {
    LoverLyricsModal(dismissModal: .constant(false))
}

