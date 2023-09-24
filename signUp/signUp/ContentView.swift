//
//  ContentView.swift
//  signUp
//
//  Created by Ferid Ehmedli on 20.06.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var textField : String = ""
    
    var body: some View {
        ZStack {
            
            Color(.systemBlue).opacity(0.2)
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading) {
                
                VStack{
                    Text("Xoş gəlmisiniz!")
                        .padding()
                        .font(.largeTitle)
                        .bold()
                        .position(x:135 , y: 80)
                    
                    Text("Qeydiyyata tələsin!")
                        .font(.headline)
                        .padding()
                        .position(x:95 , y: -70)
                }
                
                VStack{
                    TextField("Username", text: $textField)
                    
                        .padding()
                        .background(Color(.gray).opacity(0.2))
                        .cornerRadius(21)
                        .bold()
                    
                        .padding()
                    
                    TextField("Password", text: $textField)
                    
                        .padding()
                        .background(Color(.gray).opacity(0.2))
                        .cornerRadius(21)
                        .bold()
                        .padding()
                    
                    
                    
                    Button {
                        
                    } label: {
                        Spacer()
                        Text("Sign Up")
                                  .padding(.horizontal, 8)

                                  .frame(width: 300, height: 50)

                                  .foregroundColor(Color(.white).opacity(0.5))
                                  .background(Color(.systemBlue).opacity(0.2))
                                  .cornerRadius(15)
                            
                        
                        Spacer()
                    }
                    .position(x:200 , y: 70)
                }
                .position(x:195 , y:30)
            }
        
            Image("bart png")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 140)
                .position(x:205 , y:650)
        }
        
        
        
        
        
        
        
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
