//
//  ContentView.swift
//  CFGHello
//
//  Created by Lau on 01/10/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Draughts")
                    .font(.largeTitle)
                Spacer()
                NavigationLink(destination: GameModeView()){
                    HStack {
                        Image(systemName: "square.grid.3x3.square")
                            .foregroundColor(.red)
                            .imageScale(.large)
                        Text("Play")}
                }
                NavigationLink(destination:StatsView()) {
                    HStack{
                        Image(systemName: "square.grid.3x3.square")
                            .foregroundColor(.red)
                            .imageScale(.large)
                        Text("Stats")}
                }
                Spacer()
                Text("CFG iOS App Dev Mooc")
                
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
