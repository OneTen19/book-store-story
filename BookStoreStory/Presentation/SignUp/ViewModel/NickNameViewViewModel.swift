//
//  NickNameViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/5/24.
//

import Foundation

class NickNameViewViewModel: ObservableObject {
    @Published var nextButtonTapped = false
    
    @Published var nickName: String = ""
    @Published var gender: String = "남자"
    @Published var age: String = "19세 이하"
    
    let genderRanges = ["남자", "여자"]
    let ageRanges = ["19세 이하", "20~24세", "25~29세", "30~34세", "35~40세", "41세 이상"]

    init() {}
    
    
    func next() {
        //
    }
    
}
