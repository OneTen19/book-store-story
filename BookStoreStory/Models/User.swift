//
//  User.swift
//  BookStoreStory
//
//  Created by OneTen on 8/8/24.
//

import Foundation

struct User: Identifiable {
    let id = UUID().uuidString
    let nickName: String
    let email: String
    let password: String
    let gender: String
    let age: String
    let favoriteGenre: [String]
    let joined: TimeInterval
}
