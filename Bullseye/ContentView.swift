//
//  ContentView.swift
//  Bullseye
//
//  Created by Ginger on 02/08/2020.
//  Copyright © 2020 Ginger. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var jokeIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Welcome to my first app!")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text("Hello there!"),
                             message: Text("This is my first pop-ip"),
                             dismissButton: .default(Text("Awesome!")))
            }
            Button(action: {
                self.jokeIsVisible = true
            }) {
                Text("Knock, Knock!")
            }
            .alert(isPresented: $jokeIsVisible) { () -> Alert in
                return Alert(title: Text("Who's there?"), message: Text("Larry David."), dismissButton: .default(Text("Larry who?")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
