//
//  ContentView.swift
//  Interactive UIs
//
//  Created by scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        VStack(spacing: 50.0) {
            Text(textTitle)
                .font(.title)
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("Submit Name") {
                //print(name)
                textTitle = "Welcome, \(name)!"
            }
            
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
        }//closing vstack
        .padding()
        
    }//closing some view
}//vlosing content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
