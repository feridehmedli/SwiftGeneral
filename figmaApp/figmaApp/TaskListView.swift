//
//  TaskListView.swift
//  figmaApp
//
//  Created by Ferid Ehmedli on 21.06.23.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
            .toolbar {
                
                ToolbarItem(placement:.navigationBarLeading)  {
                    Image("Vector 1")
                }
                
            }
        navigationTitle("Today")
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
