//
//  TaylorAlbums2.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 09/12/2024.
//

import SwiftUI

struct TaylorAlbums2: View {
    
    var body: some View {
        
        ZStack {
            Color.backColorBlue.ignoresSafeArea(edges :.top)
            
            VStack{
                
                Text("TAYLOR SWIFT ALBUMS")
                    .font(.custom("FjallaOne-Regular", size: 26))
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                
                HStack{
                    
                    VStack{
                        
                        AlbumLink(colorAlbum : .debutGreen, titleAlbum: "Taylor Swift", imageAlbum: "debutCover", iconAlbum : "debutBoots")
                        AlbumLink(colorAlbum : .redRed, titleAlbum: "Red", imageAlbum: "redCover", iconAlbum : "redScarf")
                        AlbumLink(colorAlbum : .black, titleAlbum: "Reputation", imageAlbum: "reputationCover", iconAlbum : "reputationSnake")
                        AlbumLink(colorAlbum : .gray, titleAlbum: "Folklore", imageAlbum: "folkloreCover", iconAlbum : "folkloreCardigan")
                    }
                    
                    VStack{
                        AlbumLink(colorAlbum : .fearlessGold, titleAlbum: "Fearless", imageAlbum: "fearlessCover", iconAlbum : "fearlessGuitar")
                        AlbumLink2(colorAlbum : .ttpdTaupe, titleAlbum: "TTPD", imageAlbum: "ttpdCover", iconAlbum: "ttpdDress" )
                        AlbumLink(colorAlbum : .brown, titleAlbum: "Evermore", imageAlbum: "evermoreCover", iconAlbum : "evermoreChampagne")
                    }
                    
                    VStack{
                        
                        AlbumLink(colorAlbum : .speakNowPurple, titleAlbum: "Speak Now", imageAlbum: "speakNowCover", iconAlbum : "speakNowIcon")
                        AlbumLink(colorAlbum : .a1989Blue, titleAlbum: "1989", imageAlbum: "1989Cover", iconAlbum : "1989seagull")
                        AlbumLink(colorAlbum : .loverPink, titleAlbum: "Lover", imageAlbum: "loverCover", iconAlbum : "loverArcher")
                        AlbumLink(colorAlbum : .midnightsBlue, titleAlbum: "Midnights", imageAlbum: "midnightsCover", iconAlbum : "midnightsEtoiles")
                    }

                }.padding()
                
            }

        }
        
    }
}

#Preview {
    TaylorAlbums2()
}

struct AlbumLink: View {
    
    @State var colorAlbum : Color
    @State var titleAlbum : String
    @State var imageAlbum : String
    @State var iconAlbum : String
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width:100, height:100)
                .cornerRadius(5)
                .foregroundStyle(colorAlbum)
            
            Image(imageAlbum)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .opacity(0.2)
         
            Text(titleAlbum)
                .font(.custom("FjallaOne-Regular", size: 16))
                .foregroundStyle(.white)
                .opacity(0)
            
            Image(iconAlbum)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundStyle(Color.white)
                .opacity(0)
            
        }
    }
}

struct AlbumLink2: View {
    
    @State var colorAlbum : Color
    @State var titleAlbum : String
    @State var imageAlbum : String
    @State var iconAlbum : String
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width:100, height:205)
                .cornerRadius(5)
                .foregroundStyle(colorAlbum)
            
            Image(imageAlbum)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 205)
                .opacity(0)
            
            Text(titleAlbum)
                .font(.custom("FjallaOne-Regular", size: 16))
                .foregroundStyle(.white)
                .opacity(0)
            
            Image(iconAlbum)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 200)
                .foregroundStyle(Color.white)
        }
    }
}
