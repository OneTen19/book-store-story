//
//  HomeView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/9/24.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    var body: some View {
        Text("Home View")
        
        Button {
            do {
                try Auth.auth().signOut()
            } catch {
                print(error)
            }
        } label: {
            Text("log out")
        }

    }
}

#Preview {
    HomeView()
}
