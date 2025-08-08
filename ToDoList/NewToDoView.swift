//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        Text("Task Title:")
        TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
        .padding()
    }
}

#Preview {
    NewToDoView()
}
