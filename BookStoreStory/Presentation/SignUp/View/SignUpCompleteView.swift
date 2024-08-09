//
//  SignUpCompleateView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/7/24.
//

import SwiftUI

struct SignUpCompleteView: View {
    
    var body: some View {
        
        VStack{
            Spacer()
            
            VStack(alignment: .center){
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .foregroundStyle(.brown)
                    .padding()
                
                Text("환영합니다!!")
                    .font(.title)
                    .bold()
                    .padding()
                
                VStack(spacing: 5){
                    
                    Text("책방이야기 가입")
                        .bold()
                        .foregroundStyle(.brown)
                        .font(.title2)
                    +
                    Text("이 완료되었습니다.")
                        .font(.title3)

                    
                    Text("로그인 후 이용해주세요!!")
                        .font(.title3)
                }

                
            }
            
            Spacer()
            
            NavigationLink {
                LoginView()
            } label: {
                // 회원가입 종료
                Text("확인")
                    .foregroundStyle(.white)
                    .bold()
                    .padding(EdgeInsets(top: 15, leading: 150, bottom: 15, trailing: 150))
                    .background(.brown)
                    .clipShape(.buttonBorder)
            }
        }
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    SignUpCompleteView()
}
