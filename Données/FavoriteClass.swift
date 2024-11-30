//
//  FavoriteClass.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 27/11/2024.
//

import SwiftUI

class FavoriteSongModel : ObservableObject {
    
    @Published var inFavorites: [FavoriteSongs] = []
    
    func addToFavorites(_ song: FavoriteSongs) {
        inFavorites.append(song)
    }
    
    func removeFromFavorites(_ song: FavoriteSongs) {
        inFavorites.removeAll(where: { $0.id == song.id })
    }
    
    func isInFavorites(_ song: FavoriteSongs) -> Bool {
        inFavorites.contains(where: { $0.id == song.id })
    }
    
    func printInFavorites() {
        print(inFavorites)
    }
}
