//
//  BookStoreStoryApp.swift
//  BookStoreStory
//
//  Created by OneTen on 8/2/24.
//

import SwiftUI
import FirebaseCore

@main
struct BookStoreStoryApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
