//
//  ContentView.swift
//  LimitLock
//
//  Created by Sean Gilday on 6/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "The best app."
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text(text)
            .font(.system(size: 30))
            .bold()
            .onChange(of: scenePhase) {
                if scenePhase == .active {
                    self.text = "Active"
                    print("App is active")
                }   
                else if scenePhase == .inactive {
                    self.text = "Inactive"
                    print("App is inactive")
                }   
                else if scenePhase == .background {
                    print("App is in background")
                }
            }
    }
}

#Preview {
    ContentView()
}
