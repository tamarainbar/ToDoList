//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    
    var body: some View {
        VStack {
            //Spacer()
            Text("Task Title:")
            TextField("Enter the task description...", text: $toDoItem.item, axis: .vertical)
                .frame(width: 370.0, height: 30.0)
                .multilineTextAlignment(.center)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
            Toggle(isOn: $toDoItem.isImp) {
                Text("Is it important")
            }
            Button {
                addToDo()
                showNewTask = false
            } label: {
                Text("Save")
            }
        } //VStack
        .padding()
    }
    
    func addToDo() {
        let toDo = ToDoItem(item: toDoItem.item, isImp: toDoItem.isImp)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(item: "", isImp: false), showNewTask: .constant(false))
}
