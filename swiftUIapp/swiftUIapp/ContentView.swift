//
//  ContentView.swift
//  swiftUIapp
//
//  Created by Ferid Ehmedli on 18.06.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
 
        VStack{
            
        
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                
                Image("niagara")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(20)
                
                HStack {
                   Text("Niagara Falls")
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.leadinghalf.filled")
                        
                    }
                    
                    .foregroundColor(.orange)
                    .font(.caption)
                    
                }
                
                
               
                Text("Gəlin və ziyarət edin!")
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                
                
            }
            .padding()
            .background(Rectangle().foregroundColor(.white).cornerRadius(20))
            .padding()
            .shadow(radius: 15)
        }
            ZStack {
                Color(.systemMint)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 20.0) {
                    
                    Image("niagara")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .cornerRadius(20)
                    
                    HStack {
                       Text("Niagara Falls")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            
                        }
                        
                        .foregroundColor(.orange)
                        .font(.caption)
                        
                    }
                    
                    
                   
                    Text("Gəlin və ziyarət edin!")
                    
                    HStack{
                        Spacer()
                        Image(systemName: "fork.knife")
                        Image(systemName: "binoculars.fill")
                    }
                    .foregroundColor(.gray)
                    
                    
                }
                .padding()
                .background(Rectangle().foregroundColor(.white).cornerRadius(20))
                .padding()
                .shadow(radius: 15)
            }
            ZStack {
                Color(.systemMint)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 20.0) {
                    
                    Image("niagara")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .cornerRadius(20)
                    
                    HStack {
                       Text("Niagara Falls")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            
                        }
                        
                        .foregroundColor(.orange)
                        .font(.caption)
                        
                    }
                    
                    
                   
                    Text("Gəlin və ziyarət edin!")
                    
                    HStack{
                        Spacer()
                        Image(systemName: "fork.knife")
                        Image(systemName: "binoculars.fill")
                    }
                    .foregroundColor(.gray)
                    
                    
                }
                .padding()
                .background(Rectangle().foregroundColor(.white).cornerRadius(20))
                .padding()
                .shadow(radius: 15)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
