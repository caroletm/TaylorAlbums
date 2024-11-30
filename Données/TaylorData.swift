//
//  TaylorData.swift
//  EnumExos
//
//  Created by Carole TREM on 29/10/2024.
//

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
    var playlist : Playlist
}
    
var debut = Taylor(name: "Taylor Swift", cover: "debutCover", color:.debutGreen, color2:.debutBlue, year: 2006, genre: "Country",producers: " T.Swift", taylorsVersion : false, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. ", playlist : albumPlaylist[0] )
    
var fearless = Taylor(name: "Fearless", cover: "fearlessCover", color: .fearlessGold, color2:.black, year: 2008, genre: "Country",producers: " T.Swift", taylorsVersion : true, grammy : true, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. ", playlist: albumPlaylist[1])
    
var speakNow = Taylor(name: "Speak Now", cover: "speakNowCover", color: .speakNowPurple, color2:.speakNowViolet, year: 2010, genre: "Country Pop",producers: " T.Swift", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist: albumPlaylist[2])
    
var red = Taylor(name: "Red",cover: "redCover", color: .redRed, color2:.redRed, year: 2012, genre: "Pop",producers: " T.Swift", taylorsVersion : true, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist: albumPlaylist[3])
    
var a1989 = Taylor(name: "1989",cover: "1989Cover", color: .a1989Blue, color2:.terra, year: 2014, genre: "Pop",producers: " T.Swift", taylorsVersion : true, grammy : true, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist: albumPlaylist[4])
    
var reputation = Taylor(name: "Reputation",cover: "reputationCover", color: .black, color2:.black, year: 2017, genre: "Pop",producers: " T.Swift", taylorsVersion : false, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist: albumPlaylist[5])
    
var lover = Taylor(name: "Lover",cover: "loverCover", color: .loverPink, color2:.loverBlue, year: 2019, genre: "Pop",producers: " T.Swift, J.Antonoff, J.Little, L.Bell, F.Dukes", taylorsVersion : false, grammy : false, description: "Lover est le 7ème album de Taylor Swift.  Taylor décrit Lover comme une lettre d'amour dédiée à l'amour. La plupart des chansons sont inspirées de sa relation avec l'acteur Joe Alwyn avec qui elle était en couple pendant  6 ans. \rA travers ses chansons, Taylor affiche aussi ses convictions sur les sujets sociétaux tels que le féminisme (The Man) et les droits LGBT (Me!). \rC'est aussi le premier album dont les droits d'auteur appartiennent complètement à la chanteuse et à la sortie de Lover, Taylor déclare qu'elle a prévu de réenregistrer  tous les albums qu'elle avait déjà sortis avec son ancien label. C'est le début officiel des Taylor's Version. ", playlist: albumPlaylist[6])
    
var folklore = Taylor(name: "Folklore",cover: "folkloreCover", color: .gray, color2:.gray, year: 2020, genre: "Folk",producers: " T.Swift", taylorsVersion : false, grammy : true, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist: albumPlaylist[7])
    
var evermore = Taylor(name: "Evermore",cover: "evermoreCover", color: .brown, color2:.brown, year: 2021, genre: "Folk",producers: " T.Swift", taylorsVersion : false, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist: albumPlaylist[8])
    
var midnights = Taylor(name: "Midnights",cover: "midnightsCover", color: .midnightsBlue, color2:.midnightsLavender, year: 2022, genre: "Pop",producers: " T.Swift", taylorsVersion : false, grammy : true, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist : albumPlaylist[9])
    
var ttpd = Taylor(name: "The Tortured Poets Department",cover: "ttpdCover", color: .ttpdTaupe, color2:.ttpdTaupe,year: 2024, genre: "Pop",producers: " T.Swift", taylorsVersion : false, grammy : false, description :"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulu", playlist: albumPlaylist[10])

var taylorAlbums: [Taylor] = [debut, fearless, speakNow, red, a1989, reputation, lover, folklore, evermore, midnights,ttpd]
