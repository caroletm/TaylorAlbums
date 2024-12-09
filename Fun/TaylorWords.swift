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
    
    @State var boardHints : [[String]] = [
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","R","","","","","","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","","","","","","","","H","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","Y","","","","","","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","V","","","","T","","","","","","","","",""
        ],
        ["","","","","","","","","","","","A","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","","","","","","L","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ],
        ["","","","","","","","","","","","","","","",""
        ]
    ]
    
    @State var userLetters: [[String]] = Array(repeating: Array(repeating: "", count: 16), count: 16)
    
    func isCorrectLetter (userLetter: String, boardLetter: String) -> Bool {
        return userLetter.uppercased() == boardLetter.uppercased()
    }
    
    @State var couleurDeFond : Color = .backColorBlue
    
    var body: some View {
        
        ZStack{
            
            Color.backColorBlue.ignoresSafeArea(edges: .top)
            
            VStack(spacing: 10) {
                
                Text("OUT OF THE WORDS")
                    .font(.custom("FjallaOne-Regular", size: 26))
                    .foregroundStyle(.white)
                
                ScrollView{
                    VStack {
                        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                            
                            ForEach(board.indices, id: \.self) { row in
                                
                                GridRow{
                                    
                                    ForEach(board[row].indices, id: \.self) { column in
                                        
                                        ZStack{
                                            
                                            if !board[row][column].isEmpty{
                                                
                                                Text(board[row][column])
                                                    .frame(width: 22, height: 22)
                                                    .background(.midnightsBlue)
                                                    .border(Color.white)
                                                    .foregroundStyle(.white)
                                                    .font(.custom("Manrope-Bold", size: 16))
                                                
                                                if boardHints[row][column].isEmpty{
                                                    TextField("", text: $userLetters[row][column])
                                                        .frame(width: 22, height: 22)
                                                        .background(isCorrectLetter(userLetter: userLetters[row][column], boardLetter: board[row][column]) ? Color.midnightsBlue : Color.backColorBlue)
                                                        .border(Color.white)
                                                        .multilineTextAlignment(.center)
                                                        .foregroundStyle(.white)
                                                        .font(.custom("Manrope-Bold", size: 16))
                                                        .onChange(of: userLetters[row][column]) {
                                                            
                                                            if isCorrectLetter (userLetter : userLetters[row][column], boardLetter :board[row][column]) {
                                                                userLetters[row][column] = board[row][column]
                                                            }else{
                                                                print("c'est faux")
                                                            }
                                                        }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                
                HStack{
                    
                    ZStack{
                        
                        Rectangle()
                            .fill(.greige)
                            .frame(width: 120, height: 220)
                            .cornerRadius(5)
                        
                        VStack(alignment: .leading, spacing: 7) {
                            Text("- Albums")
                            Text("- Prix")
                            Text("- Ennemi")
                            Text("- Amoureux")
                            Text("- Amie")
                            Text("- Chat")
                            Text("- Deluxe")
                            Text("- Chanson")
                            Text("- Bonus")
                            Text("- Swiftie")
                        }.frame(width: 150, height: 210)
                            .font(.custom("Manrope-Medium", size: 12))
                    }.padding()
                    Spacer()
                    
                    Image("taylor-midnightsDress")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    
                }.padding(.horizontal, 25)
            }
        }
    }
}

#Preview { TaylorWords() }
