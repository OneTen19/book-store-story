//
//  SignUpCompleateViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/7/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class SignUpCompleateViewViewModel: ObservableObject {
    @Published var endButtonTapped = false
    
    var name: String = ""
    var nickName: String = ""
    var email: String = ""
    var password: String = ""
    var gender: String = ""
    var age: String = ""
    var favoriteGenre: [String] = []

    init() {}
    
    func signUpCompleteButton(name: String, email: String, password: String, nickName: String, gender: String, age: String, favoriteGenre: [String]) {
        
        // 파이어베이스에 유저 생성 - 이메일과 패스워드를 기반으로 만드는 creteuser 기능
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {return}
            
            // 유저 정보에 이메일과 패스워드밖에 안들어있으니 내가 넣고 싶은 값들 넣는 기능
            self?.insertUserRecord(id: userId)
        }

        self.name = name
        self.nickName = nickName
        self.email = email
        self.password = password
        self.gender = gender
        self.age = age
        self.favoriteGenre = favoriteGenre
        
        endButtonTapped = true
    }
    
    
    private func insertUserRecord(id: String){
        let newUser = User(id: id, name: name, nickName: nickName, email: email, password: password, gender: gender, age: age, favoriteGenre: favoriteGenre)
        
            let db = Firestore.firestore()

            db.collection("users")
                .document(id)
                .setData(newUser.asDictionary())
    }
    
    
    
}
