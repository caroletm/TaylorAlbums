//
//  Untitled.swift
//  ExosTest
//
//  Created by Carole TREM on 05/11/2024.
//

import SwiftUI

struct LePianoDeTaylor: View {
    
    var tableau : [String] = ["do","ré","mi","fa","sol"]
    @State var mot = ""
    @State var couleurs : [Color] = [.loverPink,.a1989Blue,.debutGreen,.fearlessGold,.redRed]
    @State var motAffiché : [String] = []
    @State var couleurAffichée : [Color] = []
    @State var motAffiché2 : [String] = []
    @State var couleurAffichée2 : [Color] = []
    @State var resultat : Color = .greige
    
    @State private var tempsDeReponse = 3
    @State private var isTimerActive = false
    
    @State var timer = Timer.publish(every: 1 , on: .main, in : .common).autoconnect()
    
    func couleur () -> Color {
        couleurs.randomElement()!
    }
    
    func playGame() {
        mot = tableau.randomElement()!
        resultat = couleur()
        
        motAffiché.append(mot)
        couleurAffichée.append(resultat)
        
        if motAffiché.count % 2 == 0 {
            tempsDeReponse -= 1
        }
        print (motAffiché)
        print(couleurAffichée)
    }
    
    var body: some View {
        
        ZStack {
            Color.greige.ignoresSafeArea()
            
            VStack(spacing:30) {
                Text("Le piano de Taylor")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Niveau:")
                //            Text("\(tempsDeReponse)")
                //                .font(.title)
                //                .foregroundColor(tempsDeReponse > 0 ? .black : .red)
                
                
                Text(mot)
                    .padding()
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .background(resultat)
                    .cornerRadius(10)
                
                HStack{
                    ForEach (couleurs, id:\.self) { couleur in
                        Button {
                            couleurAffichée2.append(couleur)
                            print(couleurAffichée2)
                            
                        } label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 50 , height: 120)
                                    .foregroundStyle(couleur)
                                    .cornerRadius(5)
                                
                                Text(" ")
                                    .padding(8)
                                    .foregroundStyle(Color.black)
                                    .font(.title2)
                                
                            }
                        }
                    }
                }
                
                
                HStack{
                    ForEach (tableau, id:\.self) { note in
                        Button {
                            motAffiché2.append(note)
                            print(motAffiché2)
                        } label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 50 , height: 120)
                                    .foregroundStyle(.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.black, lineWidth: 1))
                                Text(note)
                                    .padding(8)
                                    .foregroundStyle(Color.black)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                            }
                        }
                    }
                }
                
                Button {
                    tempsDeReponse = 3
                    isTimerActive = true
                    
                } label : {
                    Text("Suis la musique")
                        .padding()
                        .foregroundColor(.white)
                        .background(.black)
                        .fontWeight(.bold)
                        .cornerRadius(5)
                }
            }.onReceive(timer) { _ in
                
                if isTimerActive {
                    if tempsDeReponse > 0 {
                        playGame()
                    } else {
                        isTimerActive = false
                    }
                }
            }
        }
    }
}


#Preview {
    LePianoDeTaylor()
}

