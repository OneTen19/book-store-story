//
//  LoginViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/2/24.
//

import Foundation
import SwiftUI

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
        
        return true
    }
    
    
}
