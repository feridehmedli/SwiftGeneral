//
//  ContentView.swift
//  Hotel
//
//  Created by Ferid Ehmedli on 21.06.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Text("Today")
                .font(.title3)
                .bold()
                .position(x:190 , y:30)
            VStack(alignment: .leading){
                Image("niagara")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .padding()
                
                  
                HStack{
                    Text("Niagara Falls")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                  Image("fivestarrr")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    
                }
               Text("Price : 1999$")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .position(x:70)
                
                
            }
            .background(Color(.gray).opacity(0.2))
            .shadow(radius: 20)
            .cornerRadius(30)
            .padding()
            .position(x:195 , y:10)
            
            Button {
                
            } label: {
                Text("Buy")
            }
            .frame(width: 200 , height: 50)
            .background(Color(.gray).opacity(0.2))
            .cornerRadius(110)
            .position(x:180 , y: 150)
            
            .foregroundColor(.white)
            
            .padding()
            

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
