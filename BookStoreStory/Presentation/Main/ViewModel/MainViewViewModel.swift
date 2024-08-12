//
//  MainViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/2/24.
//

import Foundation

class MainViewViewModel : ObservableObject {
    @Published var stateToggle: Bool = false
    
    public var isSignedIn: Bool {
        return stateToggle
        
//        return Auth.auth().currentUser != nil
    }
    
    func toggle() {
        stateToggle.toggle()
    }
    
}
