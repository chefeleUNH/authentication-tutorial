//
//  ContentView.swift
//  AuthenticationTutorial
//
//  Created by Charles Hefele on 1/9/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var session: FirebaseSession
    
    func getUser() {
        session.listen()
    }
    
    var body: some View {
        Group {
            if (session.user != nil) {
                Text("Welcome back \(session.user?.email ?? "undefined")!")
                Button(action: session.signOut) {
                    Text("Sign Out")
                }
            } else {
                AuthView()
            }
        }.onAppear(perform: getUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(FirebaseSession())
    }
}
