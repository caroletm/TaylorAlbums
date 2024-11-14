//
//  Lover.swift
//  EnumExos
//
//  Created by Carole TREM on 28/10/2024.
//

import SwiftUI

struct Lover: View {
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.loverPink, .loverBlue], startPoint: .top, endPoint: .bottom).ignoresSafeArea()

            VStack{
                HStack{
                    Image("loverCover")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200 , height:  200)
                        .foregroundStyle(.blue)
                        .cornerRadius(10)
                    VStack{
                        Text("Lover")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("2019")
                            .font(.subheadline)
                        Text("Pop")
                            .font(.subheadline)
                        Text("Taylor Swift, Jack Antonoff, Ryan Tedder")
                            .font(.subheadline)
                    }
                        .foregroundColor(.white)
                }.padding()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .padding()
                    .font(.subheadline)
                    .foregroundStyle(.white)
                
                HStack { VStack(alignment:.leading){
                    Text("Playlist")
                        .fontWeight(.bold)
                        .font(.title)
                    Text("1. I forgot that you existed")
                        .font(.title2)
                    Text("1. I forgot that you existed")
                        .font(.title2)
                    Text("1. I forgot that you existed")
                        .font(.title2)
                    Text("1. I forgot that you existed")
                        .font(.title2)
                    Text("1. I forgot that you existed")
                        .font(.title2)
                    Text("1. I forgot that you existed")
                        .font(.title2)
                    Text("1. I forgot that you existed")
                        .font(.title2)
                    Text("1. I forgot that you existed")
                        .font(.title2)
         
                }.foregroundStyle(.white)
                    Spacer()
                }.padding()
            }
            
        }
            
        }
    }


#Preview {
    Lover()
}
