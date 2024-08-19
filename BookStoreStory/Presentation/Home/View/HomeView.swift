//
//  HomeView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/9/24.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    @StateObject var viewModel = HomeViewViewModel()
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("Home View")
            
            Spacer()
            
            // 로그아웃
            Button {
                viewModel.logOut()
            } label: {
                Text("로그아웃")
            }
            
            Spacer()
            
            
            // 회원 탈퇴
            Button {
                viewModel.deleteUser()
            } label: {
                Text("회원 탈퇴")
            }
            
            
            
        }
    }
}

#Preview {
    HomeView()
}
