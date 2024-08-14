//
//  SignUpCompleateViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/7/24.
//

import Foundation

class SignUpCompleateViewViewModel: ObservableObject {
    @Published var endButtonTapped = false

    init() {}
    
    
//    @Binding var name: String
//    @Binding var email: String
//    @Binding var password: String
//    @Binding var nickName: String
//    @Binding var gender: String
//    @Binding var age: String
//    @Binding var favoriteGenre: [String]
    
    func signUpCompleteButton(name: String, email: String, password: String, nickName: String, gender: String, age: String, favoriteGenre: [String]) {
        endButtonTapped = true
        
        print(name)
        print(email)
        print(password)
        print(nickName)
        print(gender)
        print(age)
        print(favoriteGenre)
    }
    
}
