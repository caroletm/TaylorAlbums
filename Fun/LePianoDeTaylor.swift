//
//  Untitled.swift
//  ExosTest
//
//  Created by Carole TREM on 05/11/2024.
//

import SwiftUI

struct LePianoDeTaylor: View {
    
    @State var level : Int = 1
    @State var tableau : [String] = ["do","ré","mi","fa","sol"]
    @State var mot = ""
    @State var couleurs : [Color] = [.loverPink,.a1989Blue,.debutGreen,.fearlessGold]
    @State var motAffiché : [String] = [""]
    @State var couleurAffichée : [Color] = []
    @State var motAffiché2 : [String] = []
    @State var couleurAffichée2 : [Color] = []
    @State var resultat : Color = .greige
    
    @State var tempsDeReponse = 1
    @State private var isTimerActive = false
    
    @State var timer = Timer.publish(every: 1 , on: .main, in : .common).autoconnect()
    
    @State var showModal : Bool = false
    
    func couleur () -> Color {
        couleurs.randomElement()!
    }
    
    func playGame() {
        mot = tableau.randomElement()!
        resultat = couleur()
        
        motAffiché.append(mot)
        couleurAffichée.append(resultat)
        
        if motAffiché.count % 1 == 0 {
            tempsDeReponse -= 1
        }
        print (motAffiché)
        //        print(couleurAffichée)
        
    }
    
    func modalWinner() {
        if motAffiché == motAffiché2 && couleurAffichée == couleurAffichée2{
            showModal = true
        }
    }
    
    
    var body: some View {
        
        ZStack {
            
            Color.greige.ignoresSafeArea(edges: .top)
            
            VStack(spacing:10) {
                Text("Le piano de Taylor")
                    .font(.custom("FjallaOne-Regular", size: 26))
                    .foregroundStyle(Color.black)
                Text("Niveau: " + String(level))
                    .font(.custom("Manrope-Regular", size: 18))
                    .foregroundStyle(Color.black)
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
                    .frame(width:80, height: 80)
                
                
                ZStack {
                    
                    Partition()
                    
                    ZStack{
                        
                        PartitionLignes()
                        
                        switch motAffiché2.last {
                            
                        case "do":
                            ZStack{
                                MusicNote()
                            }.offset(x: -100, y: 50)
                            
                        case "ré":
                            ZStack{
                                MusicNote()
                            }.offset(x: -50, y: 43)
                            
                        case "mi":
                            ZStack{
                                MusicNote()
                            }.offset(x: 0, y: 30)
                            
                        case "fa":
                            ZStack{
                                MusicNote()
                            }.offset(x: 50, y: 20)
                        case "sol":
                            ZStack{
                                MusicNote()
                            }.offset(x: 100, y: 10)
                            
                        default:
                            ZStack{
                                Text("")
                            }.offset(x: 0, y: 0)
                        }
                    }
                }
                
                ZStack {
                    
                    HStack{
                        ForEach (tableau, id:\.self) { note in
                            Button {
                                
                                motAffiché2.append(note)
                                print(motAffiché2)
                                
                            } label:{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 5)
                                        .frame(width: 50 , height: 150)
                                        .foregroundStyle(.white)
                                    //                                                .stroke(Color.black, lineWidth: 1))
                                    Text(note)
                                        .padding(8)
                                        .foregroundStyle(Color.black)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .offset(x: 0, y: 20)
                                }
                            }
                        }
                    }.offset(x: 0, y: 80)
                    
                    HStack{
                        ForEach (couleurs, id:\.self) { couleur in
                            Button {
                                couleurAffichée2.append(couleur)
                                print(couleurAffichée2)
                                
                            } label:{
                                ZStack{
                                    RoundedRectangle(cornerRadius:5)
                                        .frame(width: 40 , height: 120)
                                        .padding(5)
                                        .foregroundStyle(couleur)
                                        .offset(x: -3, y: 0)
                                    
                                    Text(" ")
                                        .padding(8)
                                        .foregroundStyle(Color.black)
                                        .font(.title2)
                                }
                            }
                        }
                    }.offset(x: 0, y:0)
                }
                
                Button {
                    motAffiché2.removeAll()
                    couleurAffichée2.removeAll()
                    level = 1
                    mot = ""
                    resultat = .greige
                } label: {
                    Image(systemName : "arrow.trianglehead.clockwise")
                        .foregroundStyle(.black)
                        .font(.title2)
                        .fontWeight(.bold)
                }       .offset(x: 0, y: 100)
                
                Button {
                    tempsDeReponse = level
                    motAffiché.removeFirst()
                    isTimerActive = true
                    motAffiché2.removeAll()
                    couleurAffichée.removeAll()
                    couleurAffichée2.removeAll()
                    
                } label : {
                    Text("Suis la musique")
                        .padding()
                        .foregroundColor(.white)
                        .background(.black)
                        .fontWeight(.bold)
                        .cornerRadius(5)
                }.offset(x: 0, y: 100)
                
                Spacer()
                
            }.onReceive(timer) { _ in
                
                if isTimerActive {
                    if tempsDeReponse > 0 {
                        playGame()
                    } else {
                        isTimerActive = false
                        
                    }
                    
                }
                modalWinner()
            }
            
        }.sheet(isPresented: $showModal) {ModalJeuPiano(dismissModal: $showModal, level : $level, motAffiché : $motAffiché, motAffiché2 : $motAffiché2, mot : $mot, resultat : $resultat)
                .presentationDetents([.fraction(0.50)])
                .presentationDragIndicator(.visible)
            
        }
    }
}


#Preview {
    LePianoDeTaylor()
}


struct MusicNote: View {
        
    var body: some View {
        Rectangle()
            .frame(width: 2, height: 60)
            .offset(x: 8,y: -30)
        Circle()
            .frame(width: 18)
            .foregroundStyle(.black)
    }
}

struct Partition: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: 300 , height: 120)
            .foregroundStyle(.white)
    }
}

struct PartitionLignes: View {
    var body: some View {
        VStack (spacing: 14){
            ForEach (0...4, id : \.self) { i in
                Rectangle()
                    .frame(width: 300, height: 2)
            }
        }
    }
}
