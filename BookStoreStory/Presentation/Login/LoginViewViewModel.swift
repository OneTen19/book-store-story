//
//  LoginViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/2/24.
//

import Foundation
import SwiftUI
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var path: NavigationPath = .init()

    @Published var searchEmailButtonTapped = false
    @Published var searchPasswordButtonTapped = false
    @Published var signUpButtonTapped = false
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var passwordToggle: Bool = false
    @Published var errorMessage = ""

    
    init() {}
    
    
    func login() {
        guard validate() else {return}
        
        // Try Log In
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields"
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email"
            
            return false
        }
        
        // 아이디 비밀번호가 서버에 존재하지 않을때
        // errorMessage = "계정 정보가 일치하지 않습니다"
        
        return true
    }
    
    
}
