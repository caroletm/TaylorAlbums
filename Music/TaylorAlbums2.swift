//
//  TaylorAlbums2.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 09/12/2024.
//

import SwiftUI

struct TaylorAlbums2: View {
    
    @EnvironmentObject var FavoriteSongModel : FavoriteSongModel
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                Color.backColorBlue.ignoresSafeArea(edges :.top)
                
                VStack{
                    
                    Text("TAYLOR SWIFT ALBUMS")
                        .font(.custom("FjallaOne-Regular", size: 26))
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                    
                    HStack{
                        
                        VStack{
                            
                            NavigationLink(destination: AlbumView(albumData : debut)) {
                                AlbumLink(colorAlbum : .debutGreen, titleAlbum: "Taylor Swift", imageAlbum: "debutCover", iconAlbum : "debutBoots")
                            }
                            NavigationLink(destination: AlbumView(albumData: red)) {AlbumLink(colorAlbum : .redRed, titleAlbum: "Red", imageAlbum: "redCover", iconAlbum : "redScarf")
                            }
                            
                            NavigationLink(destination: AlbumView(albumData: reputation)){
                                AlbumLink(colorAlbum : .black, titleAlbum: "Reputation", imageAlbum: "reputationCover", iconAlbum : "reputationSnake")
                            }
                            
                            NavigationLink(destination: AlbumView(albumData: folklore)){
                                AlbumLink(colorAlbum : .gray, titleAlbum: "Folklore", imageAlbum: "folkloreCover", iconAlbum : "folkloreCardigan")
                            }
                        }
                        
                        VStack{
                            NavigationLink(destination: AlbumView(albumData: fearless)){
                                AlbumLink(colorAlbum : .fearlessGold, titleAlbum: "Fearless", imageAlbum: "fearlessCover", iconAlbum : "fearlessGuitar")
                            }
                            NavigationLink(destination: AlbumView(albumData: ttpd)){
                                AlbumLink2(colorAlbum : .ttpdTaupe, titleAlbum: "TTPD", imageAlbum: "ttpdBackcover", iconAlbum: "silhouette ttpd blue" )
                            }
                            NavigationLink(destination: AlbumView(albumData: evermore)){
                                AlbumLink(colorAlbum : .brown, titleAlbum: "Evermore", imageAlbum: "evermoreCover", iconAlbum : "evermoreChampagne")
                            }
                        }
                        
                        VStack{
                            NavigationLink(destination: AlbumView(albumData: speakNow)){
                                AlbumLink(colorAlbum : .speakNowPurple, titleAlbum: "Speak Now", imageAlbum: "speakNowCover", iconAlbum : "speakNowIcon")
                            }
                            NavigationLink(destination: AlbumView(albumData: a1989)){
                                AlbumLink(colorAlbum : .a1989Blue, titleAlbum: "1989", imageAlbum: "1989Cover", iconAlbum : "1989seagull")
                            }
                            NavigationLink(destination: AlbumView(albumData: lover)){
                                AlbumLink(colorAlbum : .loverPink, titleAlbum: "Lover", imageAlbum: "loverCover", iconAlbum : "loverArcher")
                            }
                            NavigationLink(destination: AlbumView(albumData: midnights)){
                                AlbumLink(colorAlbum : .midnightsBlue, titleAlbum: "Midnights", imageAlbum: "midnightsCover", iconAlbum : "midnightsEtoiles")
                            }
                        }
                        
                    }
                    
                }
                
            }
            
        }
    }
}
    
    #Preview {
        TaylorAlbums2().environmentObject(FavoriteSongModel())
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
                    .cornerRadius(5)
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
                    .frame(width: 100, height: 200)
                    .cornerRadius(5)
                    .opacity(0.2)
                
                Text(titleAlbum)
                    .font(.custom("FjallaOne-Regular", size: 16))
                    .foregroundStyle(.white)
                    .opacity(0)
                
                Image(iconAlbum)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 200)
                    .foregroundStyle(Color.white)
                    .opacity(0)
                
            }
        }
    }
