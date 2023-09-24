//
//  ContentView.swift
//  figmaApp
//
//  Created by Ferid Ehmedli on 20.06.23.
//

import SwiftUI

struct ContentView: View {
 
    
    var body: some View {
      
        TabView {
            
            NavigationView {
                TaskListView()
            }
              .tabItem {
                    Image("Vector 3")
                        .renderingMode(.template)
                }
            
            
            InboxView()
                .tabItem {
                    Image("Vector 4")
                        .renderingMode(.template)
                }
            
            SettingsView()
                .tabItem {
                    Image("Vector 5")
                        .renderingMode(.template)
                }
            
            RemindersView()
                .tabItem {
                    Image("Vector 6")
                        .renderingMode(.template)
                }
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
