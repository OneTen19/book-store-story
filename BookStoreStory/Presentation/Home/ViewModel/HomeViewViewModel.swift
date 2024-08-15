//
//  HomeViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/15/24.
//

import Foundation
import FirebaseAuth

class HomeViewViewModel: ObservableObject {
    
    init() {}
    
    // 로그아웃
    func logOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error)
        }
    }
    
    // 회원 탈퇴
    func deleteUser() {
        Auth.auth().currentUser?.delete()
        
//        if let user = Auth.auth().currentUser {
//            user.delete { error in
//                if let error = error {
//                    print("Firebase Error : ",error)
//                } else {
//                    print("회원탈퇴 성공!")
//                }
//            }
//        } else {
//            print("로그인 정보가 존재하지 않습니다")
//        }
        
    }
    
    
}
