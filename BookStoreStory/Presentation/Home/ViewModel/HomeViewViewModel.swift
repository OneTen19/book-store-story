//
//  HomeViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/15/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

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
        
        // 둘이 왜 따로따로 구분 되는 지는 잘 모르겠음. 추후 개선해야 할 부분
        if let user = Auth.auth().currentUser {
            
            // firestore database 에서 삭제
            
            let db = Firestore.firestore()
            
            db.collection("users")
                .document(user.uid)
                .delete()
            
            
            // authentication 에서 삭제
            user.delete { error in
                if let error = error {
                    print("Firebase Error : ",error)
                } else {
                    print("회원탈퇴 성공!")
                }
            }
            
            
        } else {
            print("로그인 정보가 존재하지 않습니다")
        }
        

        
    }
    
    
}
