//
//  SignUpCompleateView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/7/24.
//

import SwiftUI

struct SignUpCompleteView: View {

    var body: some View {
        
        // 회원가입 종료
        Text("다음")
            .foregroundStyle(.white)
            .bold()
            .padding(EdgeInsets(top: 15, leading: 150, bottom: 15, trailing: 150))
            .background(.brown)
            .clipShape(.buttonBorder)
    }
}


#Preview {
    SignUpCompleteView()
}
