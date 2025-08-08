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
    @Environment(\.modelContext) var modelContext
    
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
                    if toDoItem.isImp {
                        Text("‼"+toDoItem.item)
                    } else {
                        Text(toDoItem.item)
                    }
                }
                //onDelete()
                    .onDelete(perform: deleteToDo)
            }
            .listStyle(.plain)
            
        } //VStack
        .padding()
        
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(item: "", isImp: false), showNewTask: .constant(false))
        }
    }
        func deleteToDo(at offsets: IndexSet) {
            for offset in offsets {
                let toDoItem = toDos[offset]
                modelContext.delete(toDoItem)
            }
        }
    
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
