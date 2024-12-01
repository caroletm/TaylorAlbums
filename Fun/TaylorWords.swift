//
//  TaylorWords.swift
//  TaylorAlbums
//
//  Created by Carole TREM on 01/12/2024.
//

import SwiftUI

struct TaylorWords: View {
    
    @State var board : [[String]] = [
        ["","","","","","","G","","","","","","","A","",""
        ],
        ["F","O","L","K","L","O","R","E","","","","","","N","",""
        ],
        ["","","","","","","A","","","","","","","T","",""
        ],
        ["","","","","","","M","E","R","E","D","I","T","H","",""
        ],
        ["","","","","","","M","","","","","","","O","",""
        ],
        ["","","","K","A","N","Y","E","","","","","","L","",""
        ],
        ["","","","A","","","","","","","","","","O","",""
        ],
        ["","","","R","","","","","","","","","","G","",""
        ],
        ["","","","M","","","","","","","","B","","Y","",""
        ],
        ["","","V","A","U","L","T","","","","","R","","","",""
        ],
        ["","","","","","","R","E","P","U","T","A","T","I","O","N"
        ],
        ["","","","","","","A","","","","","C","","","",""
        ],
        ["","","","","","","V","","","","","E","","","",""
        ],
        ["","","","","","","I","","","S","E","L","E","N","A",""
        ],
        ["","","","","","","S","","","","","E","","","",""
        ],
        ["","","","","","","","","","","","T","","","",""
        ]
    ]
    
    @State var userLetters: [[String]] = Array(repeating: Array(repeating: "", count: 16), count: 16)
    
    func isCorrectLetter (userLetter: String, boardLetter: String) -> Bool {
        return userLetter.uppercased() == boardLetter.uppercased()
    }
    
    @State var couleurDeFond : Color = .backColorBlue
    
    var body: some View {
        
        ZStack{
            
            Color.backColorBlue.ignoresSafeArea()
            
            VStack(spacing: 10) {
                
                VStack {
                    
                    Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                        
                        ForEach(board.indices, id: \.self) { row in
                            
                            GridRow{
                                
                                ForEach(board[row].indices, id: \.self) { column in
                                    
                                    ZStack{
                                        
                                        if !board[row][column].isEmpty{

                                            Text(board[row][column])
                                                .frame(width: 25, height: 25)
                                                .background(.backColorBlue)
                                                .border(Color.white)
                                                .foregroundStyle(.white)
                                                .font(.custom("Manrope-Bold", size: 16))
                                            
                                            TextField("", text: $userLetters[row][column])
                                                .frame(width: 25, height: 25)
                                                .background(.backColorBlue)
                                                .opacity(1)
                                                .border(Color.white)
                                                .multilineTextAlignment(.center)
                                                .foregroundStyle(.white)
                                                .font(.custom("Manrope-Bold", size: 16))
                                                .onChange(of: userLetters[row][column]) {
                                                    
                                                    if isCorrectLetter (userLetter : userLetters[row][column], boardLetter :board[row][column]) {
                                                        print("bonne lettre")
                                                    }else{
                                                        print("c'est faux")
                                                    }
                                                }
                                        }
                                    }
                                }
                            }
                        }
                    }.padding()
                }.padding()
            }.padding()
        }
    }
}

#Preview { TaylorWords() }
