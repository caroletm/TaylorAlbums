//
//  ContentView.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 13/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            TabView {
                TaylorAlbums()
                    .tabItem {
                        Label("Music", image: "musicIcon")
                    }
                SearchLyrics()
                    .tabItem {
                        Label("Search", image: "searchIcon")
                    }
                LePianoDeTaylor()
                    .tabItem {
                        Label("Fun", image: "discoIcon")
                    }
                MyFavorites()
                    .tabItem {
                        Label("Favorites", image: "heartIcon")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
