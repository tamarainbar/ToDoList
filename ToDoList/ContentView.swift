//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                } //Button
                
            } //HStack
            
            Spacer()
            
            List {
                ForEach (toDos) { toDoItem in
                        Text(toDoItem.item)
                }
            }
        } //VStack
        .padding()
        
        if showNewTask == true {
            NewToDoView()
        }
        
        
    }
}

#Preview {
    ContentView()
}
