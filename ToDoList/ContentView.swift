//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Spacer()
                
                Button {
                    
                } label: {
                    Text("+")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                } //Button
            } //HStack
            Spacer()
        } //VStack
        .padding()
    }
}

#Preview {
    ContentView()
}
