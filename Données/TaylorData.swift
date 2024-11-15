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
    var color2: Color
    var year : Int
    var genre : String
    var producers: String
    var taylorsVersion: Bool
    var grammy: Bool
    var description : String
}

var taylorAlbums = [
    
    Taylor(name: "Debut", cover: "debutCover", color:.debutGreen, color2:.loverBlue, year: 2006, genre: "Country",producers: " T.Swift, J...", taylorsVersion : false, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. "),
    
    Taylor(name: "Fearless", cover: "fearlessCover", color: .fearlessGold, color2:.black, year: 2008, genre: "Country",producers: " T.Swift, J...", taylorsVersion : true, grammy : true, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. "),
    
    Taylor(name: "Speak Now", cover: "speakNowCover", color: .speakNowPurple, color2:.speakNowPurple, year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu"),
    
    Taylor(name: "Red",cover: "redCover", color: .redRed, color2:.redRed, year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu"),
    
    Taylor(name: "1989",cover: "1989Cover", color: .a1989Blue, color2:.a1989Blue, year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu"),
    
    Taylor(name: "Reputation",cover: "reputationCover", color: .black, color2:.black, year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu"),
    
    Taylor(name: "Lover",cover: "loverCover", color: .loverPink, color2:.loverBlue, year: 2019, genre: "Pop",producers: " T.Swift, J.Antonoff, J.Little, L.Bell, F.Dukes", taylorsVersion : false, grammy : false, description: "Lover est le 7ème album de Taylor Swift.  Taylor décrit Lover comme une lettre d'amour dédiée à l'amour. La plupart des chansons sont inspirées de sa relation avec l'acteur Joe Alwyn avec qui elle était en couple pendant  6 ans. \rA travers ses chansons, Taylor affiche aussi ses convictions sur les sujets sociétaux tels que le féminisme (The Man) et les droits LGBT (Me!). \rC'est aussi le premier album dont les droits d'auteur appartiennent complètement à la chanteuse et à la sortie de Lover, Taylor déclare qu'elle a prévu de réenregistrer  tous les albums qu'elle avait déjà sortis avec son ancien label. C'est le début officiel des Taylor's Version. "),
    
    Taylor(name: "Folklore",cover: "folkloreCover", color: .gray, color2:.gray, year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu"),
    
    Taylor(name: "Evermore",cover: "evermoreCover", color: .brown, color2:.brown, year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu"),
    
    Taylor(name: "Midnights",cover: "midnightsCover", color: .midnightsBlue, color2:.midnightsBlue, year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu"),
    
    Taylor(name: "The Tortured Poets Department",cover: "ttpdCover", color: .ttpdTaupe, color2:.ttpdTaupe,year: 2010, genre: "Country Pop",producers: " T.Swift, J...", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu")]

