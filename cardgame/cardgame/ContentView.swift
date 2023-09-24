//
//  ContentView.swift
//  cardgame
//
//  Created by Ferid Ehmedli on 18.06.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
       
  
        ZStack{
            
            Color(.darkGray)
                .ignoresSafeArea()
            
            VStack {
                
                Image("logo")
                    .position(x:190 , y: 120)
                
                    
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    Spacer()
                    }
                .position(x:190 , y:150)
                
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                .foregroundColor(.white)
                    .position(x:190 , y: 130)
                    .animation(.linear, value: 10)
                
                
                HStack{
                    
                    VStack {
                        Spacer()
                        Text("Player 1")
                            .position(x:100 , y: 25)
                            .font(.headline)
                        
                        Text(String(playerScore))
                            .position(x:100 , y: 50)
                            .font(.largeTitle)
                        Spacer()
                    }
                    
                    VStack {
                        Spacer()
                        Text("Player 2")
                            .position(x:95 , y:25)
                            .font(.headline)
                        
                        Text(String(cpuScore))
                            .position(x:100 , y: 50)
                            .font(.largeTitle)
                        Spacer()
                    }
                    
                    
                    
                }
                .foregroundColor(.white)
            }
            
        }
        
      
        
    }
    
    func deal() {
      
        playerCard = "card" + String(Int.random(in: 2...14))
        
        cpuCard = "card" + String(Int.random(in: 2...14))
        
        if playerCard > cpuCard {
            
           playerScore = playerScore + 1
            
        } else if cpuCard > playerCard {
            
            cpuScore += 1
            
        } 
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
