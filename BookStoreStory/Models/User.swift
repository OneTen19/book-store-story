//
//  User.swift
//  BookStoreStory
//
//  Created by OneTen on 8/8/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let nickName: String
    let email: String
    let password: String
    let gender: String
    let age: String
    let favoriteGenre: [String]
}
