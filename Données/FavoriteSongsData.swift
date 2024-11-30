//
//  FavoriteSongs.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 23/11/2024.
//

import Foundation
import SwiftUI

struct FavoriteSongs : Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
    var albumName : String
    var albumCover : String
    var albumColor : Color
}

var favoriteSong1 = FavoriteSongs(name: "Favorite Song 1", albumName: "albumName", albumCover: "albumCover",albumColor: .white)
var favoriteSong2 = FavoriteSongs(name: "Favorite Song 2", albumName: "albumName", albumCover: "albumCover",albumColor: .white)
