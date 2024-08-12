//
//  EmailViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import Foundation

class EmailViewViewModel: ObservableObject {
    @Published var nextButtonTapped = false
    
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var passwordCheck: String = ""
    @Published var passwordToggle: Bool = false
    @Published var isActive: Bool = false
    @Published var errorMessage = ""
    
    init() {}
    
    func next() {
        guard validate() else {return}
        
        nextButtonTapped = true
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              !passwordCheck.trimmingCharacters(in: .whitespaces).isEmpty,
              !name.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            
            errorMessage = "Please fill in all fields"
            
            return false
        }
        
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "올바른 이메일 형식을 지켜주세요"
            
            return false
        }
        
        
        guard password == passwordCheck else {
            errorMessage = "비밀번호를 다시 확인해주세요"
            
            return false
        }
        
        
        
        return true
    }
    
    
    
}
