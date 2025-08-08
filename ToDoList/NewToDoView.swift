//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            //Spacer()
            Text("Task Title:")
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .frame(width: 370.0, height: 30.0)
                .multilineTextAlignment(.center)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important")
            }
            Button {
                
            } label: {
                Text("Save")
            }
        } //VStack
        .padding()
    }
}

#Preview {
    NewToDoView()
}
