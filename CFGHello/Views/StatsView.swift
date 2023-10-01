//
//  StatsView.swift
//  CFGHello
//
//  Created by Lau on 01/10/23.
//

import SwiftUI

struct StatsView: View {
    @State var userProfile: UserProfile = UserProfile(userName: "CFG", gamesAttempted: 0)
    var body: some View {
        VStack {
            Text("\(userProfile.userName)'s Stats")
                .font(.title)
            
            Form{
                HStack {
                    Text("Username:")
                    TextField("userName", text: $userProfile.userName)
                        .onSubmit {
                            saveUserProfile()
                        }
                }
                HStack {
                    Text("Games Attempted:")
                    Text("\(userProfile.gamesAttempted)")
                }
            }
        }
        .onAppear{
            loadUserProfile()
        }
    }
    
    func saveUserProfile() {
        UserDefaults.standard.set(userProfile.userName, forKey: "userName")
        UserDefaults.standard.set(userProfile.gamesAttempted, forKey: "gamesAttempted")
    }
    
    func loadUserProfile() {
        loadUserName()
        loadGamesAttempted()
    }
    
    func loadUserName() {
        if(UserDefaults.standard.object(forKey: "userName") != nil) {
            userProfile.userName = UserDefaults.standard.string(forKey: "userName")!
        }
    }
    
    func loadGamesAttempted() {
        if(UserDefaults.standard.object(forKey: "gamesAttempted") != nil) {
            UserDefaults.standard.integer(forKey: "gamesAttempted")
        }
    }
}

#Preview {
    StatsView()
}
