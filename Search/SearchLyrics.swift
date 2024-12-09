//
//  SearchLyrics.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 13/11/2024.
//

import SwiftUI

struct SearchLyrics: View {
    
    @State var recherche : String = ""
    
    var body: some View {
        
        ZStack {
            
            Color.backColorBlue.ignoresSafeArea(edges: .top)
            
            VStack {
                
                TextField("Recherchez vos paroles", text: $recherche)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                
                if recherche.isEmpty {
                    Text("Recherchez vos paroles ici")
                }else {
                    ZStack{
                        Rectangle()
                            .frame(width: 280, height : 120)
                        Text(recherche)
                            .foregroundStyle(Color.white)
                    }
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    SearchLyrics()
}
