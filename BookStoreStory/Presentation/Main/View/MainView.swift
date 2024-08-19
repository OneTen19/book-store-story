//
//  ContentView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/2/24.
//
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            TabView {
                
                // Home
                HomeView()
                    .tabItem { Label("홈", systemImage: "house") }
                
                // Library
                LibraryView()
                    .tabItem { Label("서재", systemImage: "books.vertical") }
                
                // Record
                RecordView()
                    .tabItem { Label("기록", systemImage: "applepencil") }
                
                // Option
                OptionView()
                    .tabItem { Label("설정", systemImage: "gearshape") }
                
            }
        } else {
            LoginView()
        }
        
    }
}





#Preview {
    MainView()
}
