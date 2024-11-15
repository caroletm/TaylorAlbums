//
//  loverData.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 14/11/2024.
//

import Foundation
import SwiftUI

struct Lover : Identifiable, Hashable {
    var id: UUID = UUID()
    var songs : [String]
    var lyrics: [String]
}

var loverAlbum = Lover(
    songs: ["I Forgot That You Existed","Cruel Summer","Lover", "The Man","The Archer","I Think He Knows","Miss Americana & the Heartbreak Prince","Paper Rings","Cornelia Street","Death by a Thousand Cuts", "London Boy","Soon You'll Get Better (featuring the Chicks)" ,"False God","You Need to Calm Down","Afterglow","Me! (featuring Brendon Urie of Panic! at the Disco)","It's Nice to Have a Friend", "Daylight"],
    lyrics: ["""
How many days did I spend\rThinkin' 'bout how you did me wrong, wrong, wrong?\rLived in the shade you were throwin'\r'Til all of my sunshine was gone, gone, gone\rAnd I couldn't get away from ya\rIn my feelings more than Drake, so yeah\rYour name on my lips, tongue tied\rFree rent, livin' in my mind\rBut then something happened one magical night\r\rI forgot that you existed\rAnd I thought that it would kill me, but it didn't\rAnd it was so nice\r So peaceful and quiet\r\rI forgot that you existed\rIt isn't love, it isn't hate\rIt's just indifference\r\rI forgot that you\r Got out some popcorn\rAs soon as my rep starting going down, down, down\rLaughed on the schoolyard\rAs soon as I tripped up and hit the ground, ground, ground\rAnd I would've stuck around for ya\rWould've fought the whole town, so yeah\rWould've been right there, front row\rEven if nobody came to your show\rBut you showed who you are, then one magical night\r\rI forgot that you existed\rAnd I thought that it would kill me, but it didn't\rAnd it was so nice\rSo peaceful and quiet\r\rI forgot that you existed\rIt isn't love, it isn't hate\rIt's just indifference\r\rI forgot that you\rSent me a clear message\rTaught me some hard lessons\rI just forget what they were\rIt's all just a blur\r\rI forgot that you existed\rAnd I thought that it would kill me, but it didn't\rAnd it was so nice\rSo peaceful and quiet\r\rI forgot that you existed\rI did, I did, I did\rIt isn't hate, it's just indifference\rIt isn't love, it isn't hate\rIt's just indifference (so yeah)
""", "","","","","","","","","","","","","","","","","","",""])
    
