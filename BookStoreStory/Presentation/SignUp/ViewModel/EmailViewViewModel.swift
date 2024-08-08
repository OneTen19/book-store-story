//
//  EmailViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import Foundation

class EmailViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var passwordCheck: String = ""
    @Published var passwordToggle: Bool = false
    
    init() {}
}
