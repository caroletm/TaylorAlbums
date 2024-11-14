//
//  TaylorData.swift
//  EnumExos
//
//  Created by Carole TREM on 29/10/2024.
//

//var taylorAlbums = [
//    Taylor(name: "Debut", year: 2006, category: "Country", grammy: false, color: .green, TaylorsVersion: false, album : .debut),
//    Taylor(name: "Fearless", year: 2008, category: "Country", grammy: false, color: .yellow, TaylorsVersion: true, album : .fearless),
//    Taylor(name: "Speak Now", year: 2010, category: "Pop/Country", grammy: false, color: .purple, TaylorsVersion: true, album: .speakNow),
//    Taylor(name: "Red", year: 2012, category: "Pop/Country", grammy: false, color: .red, TaylorsVersion: true, album : .ared),
//    Taylor(name: "1989", year: 2014, category: "Pop", grammy: true, color: .cyan, TaylorsVersion: true, album : .a1989),
//    Taylor(name: "Reputation", year: 2017, category: "Pop/Rock", grammy: false, color: .black, TaylorsVersion: false, album : .reputation),
//    Taylor(name: "Lover", year: 2019, category: "Pop", grammy: false, color: .pink, TaylorsVersion: true, album : .lover),
//    Taylor(name: "Folklore", year: 2020, category: "Folk", grammy: true, color: .gray, TaylorsVersion: false, album : .folklore),
//    Taylor(name: "Evermore", year: 2020, category: "Folk", grammy: false, color: .brown, TaylorsVersion: false, album: .evermore ),
//    Taylor(name: "Midnights", year: 2022, category: "Pop", grammy: true, color: .indigo, TaylorsVersion: false, album : .midnights),
//    Taylor(name: "The Tortured Poets Department", year: 2024, category: "Pop", grammy: false, color: .teal, TaylorsVersion: false, album : .ttpd)]

import Foundation
import SwiftUI

struct Taylor : Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
    var cover: String
    var color: Color
}

var taylorAlbumsCovers = [
    Taylor(name: "Debut", cover: "debutCover", color:.debutGreen),
    Taylor(name: "Fearless", cover: "fearlessCover", color: .fearlessGold),
    Taylor(name: "Speak Now", cover: "speakNowCover", color: .speakNowPurple),
    Taylor(name: "Red",cover: "redCover", color: .redRed),
    Taylor(name: "1989",cover: "1989Cover", color: .a1989Blue),
    Taylor(name: "Reputation",cover: "reputationCover", color: .black),
    Taylor(name: "Lover",cover: "loverCover", color: .loverPink),
    Taylor(name: "Folklore",cover: "folkloreCover", color: .gray),
    Taylor(name: "Evermore",cover: "evermoreCover", color: .brown),
    Taylor(name: "Midnights",cover: "midnightsCover", color: .indigo),
    Taylor(name: "The Tortured Poets Department",cover: "ttpdCover", color: .ttpdTaupe)]
