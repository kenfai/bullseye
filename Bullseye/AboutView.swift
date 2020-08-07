//
//  AboutView.swift
//  Bullseye
//
//  Created by Ginger on 07/08/2020.
//  Copyright © 2020 Ginger. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("🎯 Bullseye 🎯")
            Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.")
            Text("Your goal is to place the slider as close as possible to ther target value. The close you are, the more points you score.")
            Text("Enjoy!")
        }
        .navigationBarTitle("About Bullseye")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414)) // Landscape
    }
}
