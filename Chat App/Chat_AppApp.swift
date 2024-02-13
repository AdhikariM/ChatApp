//
//  Chat_AppApp.swift
//  Chat App
//
//  Created by Mahesh Adhikari on 2/11/24.
//

import SwiftUI
import Firebase

@main
struct Chat_AppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
