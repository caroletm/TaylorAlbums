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
                
                TextField("Search lyrics", text: $recherche)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                Spacer()
                
            }
        }
    }
}

#Preview {
    SearchLyrics()
}
