//
//  GameModeView.swift
//  CFGHello
//
//  Created by Lau on 01/10/23.
//

import SwiftUI

struct GameModeView: View {
    var body: some View {
        VStack {
            Text("Game Mode")
                .padding()
            HStack {
                HStack {
                    Image(systemName: "square.grid.3x3.square")
                        .foregroundColor(.red)
                        .imageScale(.large)
                    Text("Normal")}
                HStack{
                    Image(systemName: "timer")
                        .foregroundColor(.red)
                        .imageScale(.large)
                    Text("Timer")}
            }
        }
    }
}

#Preview {
    GameModeView()
}
