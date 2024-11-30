////
////  TaylorAlbums.swift
////  EnumExos
////
////  Created by Carole TREM on 27/10/2024.
////
//
//
//import SwiftUI
//
//struct TaylorAlbumsold: View {
//    
//    var body: some View {
//        
//        NavigationStack{
//        
//            ZStack {
//                Color.black.ignoresSafeArea()
//                
//                ScrollView{
//                    
//                    VStack (spacing:0) {
//                        
//                        Text("Taylor Swift Albums")
//                            .foregroundStyle(.white)
//                            .font(.title)
//                            .fontWeight(.bold)
//                        
//                        Spacer()
//                        
//                        ForEach(taylorAlbumsold) {eachAlbum in
//                            
//                            ZStack {
//                                
//                                eachAlbum.color.ignoresSafeArea()
//
//                                    VStack {
//                                        
//                                      Text(eachAlbum.name)
//                                            .font(.title)
//                                            .fontWeight(.bold)
//                                            .foregroundColor(.white)
//                                        
//                                        Text("\(eachAlbum.year)")
//                                            .font(.headline)
//                                            .fontWeight(.bold)
//                                            .foregroundColor(.white)
//                                    }
//                            }
//                        }
//                    }
//                }.padding()
//            }
//        }
//    }
//}
//
//#Preview {
//    TaylorAlbumsold()
//}
//
