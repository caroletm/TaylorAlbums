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
                        Label("Musique", image: "musicIcon")
                    }
                SearchLyrics()
                    .tabItem {
                        Label("Recherche", image: "searchIcon")
                    }
                LePianoDeTaylor()
                    .tabItem {
                        Label("Fun", image: "discoIcon")
                    }
                MyFavorites()
                    .tabItem {
                        Label("Favoris", image: "heartIcon")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
