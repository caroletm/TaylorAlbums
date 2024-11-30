//
//  ModalPiano.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 28/11/2024.
//

import SwiftUI

struct ModalJeuPiano: View {
    
    @Binding var dismissModal : Bool
    @Binding var level : Int
    @Binding var motAffiché: [String]
    @Binding var motAffiché2 : [String]
    @Binding var mot : String
    @Binding var resultat : Color
    
    var taylorEmotions : [String] = ["taylorSwift-biceps","taylorSwift-thumbsUp", "taylorSwift-Happy"]
    
    func taylorImage() -> String {
        return if level == 1 {
            "taylorSwift-thumbsUp"
        } else if level == 2 {
            "taylorSwift-Happy"
        } else {
            "taylorSwift-biceps"
        }
    }
    
    
    func congratsPhrase () -> String {
        return if level == 1 {
            "Bravo !"
        } else if level == 2 {
            " Yess !"
        } else {
            "Tu déchires !"
        }
    }
    
    var body: some View {
        
        ZStack{
            
            Color.greige.ignoresSafeArea()
            
            VStack(spacing:20){
                
                Text(congratsPhrase())
                
                    .font(.custom("Manrope-Bold", size: 26))
                
                Image(taylorImage())
                    .resizable()
                    .scaledToFit()
                    .frame (width : 300, height : 200)
                    .offset(x:20, y:0)
                Button {
                    dismissModal.toggle()
                    level += 1
                    motAffiché = [""]
                    motAffiché2.removeAll()
                    mot = ""
                    resultat = .backColorBlue
                    
                } label: {
                    Text("Continuer")
                        .padding()
                        .font(.custom("Manrope-Bold", size: 20))
                        .foregroundStyle(.white)
                        .background(Color.redRed)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    
    ModalJeuPiano(dismissModal: .constant(false), level : .constant(1), motAffiché: .constant([""]), motAffiché2: .constant([""]), mot: .constant(""), resultat : .constant(.backColorBlue))
}

