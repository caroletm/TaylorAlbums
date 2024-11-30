//
//  loverData.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 14/11/2024.
//

import Foundation
import SwiftUI

struct Playlist : Identifiable, Hashable {
    var id: UUID = UUID()
    var songs : [String]
    var lyrics: [String]
    var favoriteSong: FavoriteSongs
}

var debutPlaylist = Playlist (
    songs:["Tim McGraw","Picture to Burn","Teardrops on My Guitar","A Place in This World","Cold as You","The Outside","Tied Together with a Smile","Stay Beautiful","Should've Said No","Mary's Song (Oh My My My)","Our Song"] ,
    
    lyrics: ["""
 He said the way my blue eyes shined
 Put those Georgia stars to shame that night
 I said, "That's a lie"
 Just a boy in a Chevy truck
 That had a tendency of gettin' stuck
 On backroads at night
 And I was right there beside him all summer long
 And then the time we woke up to find that summer gone
 But when you think Tim McGraw
 I hope you think my favorite song
 The one we danced to all night long
 The moon like a spotlight on the lake
 When you think happiness
 I hope you think that little black dress
 Think of my head on your chest
 And my old faded blue jeans
 When you think Tim McGraw
 I hope you think of me
 September saw a month of tears
 And thanking God that you weren't here
 To see me like that
 But in a box beneath my bed
 Is a letter that you never read
 From three summers back
 It's hard not to find it all a little bittersweet
 And lookin' back on all of that, it's nice to believe
 When you think Tim McGraw
 I hope you think my favorite song
 The one we danced to all night long
 The moon like a spotlight on the lake
 When you think happiness
 I hope you think that little black dress
 Think of my head on your chest
 And my old faded blue jeans
 When you think Tim McGraw
 I hope you think of me
 And I'm back for the first time since then
 I'm standing on your street
 And there's a letter left on your doorstep
 And the first thing that you'll read
 Is when you think Tim McGraw
 I hope you think my favorite song
 Someday you'll turn your radio on
 I hope it takes you back to that place
 When you think happiness
 I hope you think that little black dress
 Think of my head on your chest
 And my old faded blue jeans
 When you think Tim McGraw
 I hope you think of me
 Oh, think of me
 Mmm
 He said the way my blue eyes shined
 Put those Georgia stars to shame that night
 I said, "That's a lie"
 """,
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],

    favoriteSong: favoriteSong1)

var fearlessPlaylist = Playlist (
    songs:["Fearless","Fifteen","Love Story","Hey Stephen","White Horse","You Belong With Me","Breathe (ft. Colbie Caillat)", "Tell Me Why","You're Not Sorry","The Way I Loved You","Forever & Always","The Best Day","Change"] ,
    lyrics: ["""
There's somethin' bout the way
The street looks when it's just rained
There's a glow off the pavement
You walk me to the car
And you know I wanna ask you to dance right there
In the middle of the parking lot
Yeah
Oh, yeah
We're drivin' down the road
I wonder if you know
I'm tryin' so hard not to get caught up now
But you're just so cool
Run your hands through your hair
Absent mindedly makin' me want you
And I don't know how it gets better than this
You take my hand and drag me head first
Fearless
And I don't know why
But with you I'd dance in a storm
In my best dress
Fearless
So baby drive slow
'Til we run out of road in this one horse town
I wanna stay right here in this passenger seat
You put your eyes on me
In this moment now capture it, remember it
'Cause I don't know how it gets better than this
You take my hand and drag me head first
Fearless
And I don't know why
But with you I'd dance in a storm
In my best dress
Fearless
Oh, oh
Well you stood there with me in the doorway
My hands shake
I'm not usually this way but
You pull me in and I'm a little more brave
It's the first kiss, it's flawless, really something, it's fearless
Oh, yeah
'Cause I don't know how it gets better than this
You take my hand and drag me head first
Fearless
And I don't know why
But with you I'd dance in a storm
In my best dress
Fearless
'Cause I don't know how it gets better than this
You take my hand and drag me head first
Fearless
And I don't know why
But with you I'd dance in a storm
In my best dress
Fearless
Oh, oh, oh yeah
""",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var speakNowPlaylist = Playlist (
    songs:["Mine","Sparks Fly","Back to December","Speak Now","Dear John","Mean","The Story of Us","Never Grow Up","Enchanted","Better than Revenge","Innocent","Haunted","Last Kiss","Long Live"] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var redPlaylist = Playlist (
    songs:["State of Grace","Red","Treacherous","I Knew You Were Trouble","All Too Well","22","I Almost Do","We Are Never Ever Getting Back Together","Stay Stay Stay","The Last Time (ft. Gary Lightbody of Snow Patrol)","Holy Ground","Sad Beautiful Tragic","The Lucky One","Everything Has Changed (ft. Ed Sheeran)","Starlight","Begin Again"] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var a1989Playlist = Playlist (
    songs:["Welcome to New York","Blank Space","Style","Out of the Woods","All You Had to Do Was Stay","Shake It Off","I Wish You Would","Bad Blood","Wildest Dreams","How You Get the Girl","This Love","I Know Places","Clean",] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var reputationPlaylist = Playlist (
    songs:["…Ready for It?","End Game featuring Ed Sheeran and Future)","I Did Something Bad","Don't Blame Me","Delicate","Look What You Made Me Do","So It Goes...","Gorgeous","Getaway Car","King of My Heart","Dancing with Our Hands Tied","Dress","This Is Why We Can't Have Nice Things","Call It What You Want","New Year's Day"] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var loverPlaylist = Playlist(
    songs: ["I Forgot That You Existed","Cruel Summer","Lover", "The Man","The Archer","I Think He Knows","Miss Americana & the Heartbreak Prince","Paper Rings","Cornelia Street","Death by a Thousand Cuts", "London Boy","Soon You'll Get Better (featuring the Chicks)" ,"False God","You Need to Calm Down","Afterglow","Me! (featuring Brendon Urie of Panic! at the Disco)","It's Nice to Have a Friend", "Daylight"],
    lyrics: ["""
How many days did I spend\rThinkin' 'bout how you did me wrong, wrong, wrong?\rLived in the shade you were throwin'\r'Til all of my sunshine was gone, gone, gone\rAnd I couldn't get away from ya\rIn my feelings more than Drake, so yeah\rYour name on my lips, tongue tied\rFree rent, livin' in my mind\rBut then something happened one magical night\r\rI forgot that you existed\rAnd I thought that it would kill me, but it didn't\rAnd it was so nice\r So peaceful and quiet\r\rI forgot that you existed\rIt isn't love, it isn't hate\rIt's just indifference\r\rI forgot that you\r Got out some popcorn\rAs soon as my rep starting going down, down, down\rLaughed on the schoolyard\rAs soon as I tripped up and hit the ground, ground, ground\rAnd I would've stuck around for ya\rWould've fought the whole town, so yeah\rWould've been right there, front row\rEven if nobody came to your show\rBut you showed who you are, then one magical night\r\rI forgot that you existed\rAnd I thought that it would kill me, but it didn't\rAnd it was so nice\rSo peaceful and quiet\r\rI forgot that you existed\rIt isn't love, it isn't hate\rIt's just indifference\r\rI forgot that you\rSent me a clear message\rTaught me some hard lessons\rI just forget what they were\rIt's all just a blur\r\rI forgot that you existed\rAnd I thought that it would kill me, but it didn't\rAnd it was so nice\rSo peaceful and quiet\r\rI forgot that you existed\rI did, I did, I did\rIt isn't hate, it's just indifference\rIt isn't love, it isn't hate\rIt's just indifference (so yeah)
""",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
""],
    favoriteSong: favoriteSong1)

var folklorePlaylist = Playlist (
    songs:["The 1","Cardigan","The Last Great American Dynasty","Exile (ft. Bon Iver)","My Tears Ricochet","Mirrorball","Seven","August","This Is Me Trying","Illicit Affairs","Invisible String","Mad Woman","Epiphany","Betty","Peace","Hoax"] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var evermorePlaylist = Playlist (
    songs:["Willow","Champagne Problems","Gold Rush","'Tis the Damn Season","Tolerate It","No Body, No Crime (featuring Haim)","Happiness","Dorothea","Coney Island (featuring the National)","Ivy","Cowboy like Me","Long Story Short","Marjorie","Closure","Evermore (featuring Bon Iver"] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var midnightsPlaylist = Playlist (
    songs:["Lavender Haze","Maroon","Anti-Hero","Snow on the Beach (featuring Lana Del Rey)","You're on Your Own, Kid","Midnight Rain","Question...?","Vigilante Shit","Bejeweled","Labyrinth","Karma","Sweet Nothing","Mastermind"] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)

var ttpdPlaylist = Playlist (
    songs:["Fortnight (featuring Post Malone)","The Tortured Poets Department","My Boy Only Breaks His Favorite Toys","Down Bad","So Long, London","But Daddy I Love Him","Fresh Out the Slammer","Florida!!!  (featuring Florence and the Machine)","Guilty as Sin?","Who's Afraid of Little Old Me?","I Can Fix Him (No Really I Can)","Loml","I Can Do It with a Broken Heart","The Smallest Man Who Ever Lived","The Alchemy","Clara Bow"] ,
    lyrics: ["...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "...",
             "..."],
    favoriteSong: favoriteSong1)
    
var albumPlaylist = [debutPlaylist,fearlessPlaylist,speakNowPlaylist,redPlaylist,a1989Playlist,reputationPlaylist, loverPlaylist, folklorePlaylist, evermorePlaylist,midnightsPlaylist,ttpdPlaylist]


    


