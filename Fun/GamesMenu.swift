//
//  GamesMenu.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 29/11/2024.
//

import SwiftUI

struct GamesMenu: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                Color.backColorBlue.ignoresSafeArea(edges: .top)
                
                VStack (spacing:20) {
                    
                    Text("Love is a game, wanna play?")
                        .font(.custom("Manrope-Bold", size: 24))
                        .foregroundStyle(.white)
                    
                    NavigationLink(destination: LePianoDeTaylor()) {
                        BoutonJeu(colorJeu:.brown, nomJeu:"Le Piano de Taylor", imageJeu:"taylorSwift-piano")
                    }
                    
                    BoutonJeu2(colorJeu:.midnightsBlue, nomJeu:"Taylor Quizz ", imageJeu:"taylorSwift-Quizz")
                    
                    BoutonJeu(colorJeu:.redRed, nomJeu:"Paroles de Swifties! ", imageJeu:"taylorSwift-singLyrics")
                    
                }
            }
        }
    }
}

#Preview { GamesMenu() }

struct BoutonJeu: View {
    
    @State var colorJeu : Color
    @State var nomJeu : String
    @State var imageJeu : String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(colorJeu)
            
            HStack{
                Text(nomJeu)
                    .foregroundStyle(.white)
                    .font(.custom("Manrope-Bold", size: 25))
                
                Spacer()
                
                Image(imageJeu)
                    .resizable()
                    .scaledToFit()
            }.padding()
            
        } .frame(width: 350, height: 150)
    }
}

struct BoutonJeu2: View {
    
    @State var colorJeu : Color
    @State var nomJeu : String
    @State var imageJeu : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(colorJeu)
            
            HStack{
                Image(imageJeu)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text(nomJeu)
                    .foregroundStyle(.white)
                    .font(.custom("Manrope-Bold", size: 25))
                
            }.padding(20)
            
        } .frame(width: 350, height: 150)
    }
}