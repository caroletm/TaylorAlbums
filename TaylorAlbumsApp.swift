//
//  TaylorAlbumsApp.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 13/11/2024.
//

import SwiftUI

@main

struct TaylorAlbumsApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.environmentObject(FavoriteSongModel())
    }
}
