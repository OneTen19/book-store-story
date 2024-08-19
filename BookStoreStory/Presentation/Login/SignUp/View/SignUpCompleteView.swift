//
//  SignUpCompleateView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/7/24.
//

import SwiftUI

struct SignUpCompleteView: View {
    
    @StateObject var viewModel = SignUpCompleateViewViewModel()
    
    @Binding var name: String
    @Binding var email: String
    @Binding var password: String
    @Binding var nickName: String
    @Binding var gender: String
    @Binding var age: String
    @Binding var favoriteGenre: [String]
    
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

                    
                    Text("당신의 이야기를 들려주세요!!")
                        .font(.title3)
                }

                
            }
            
            Spacer()
            
            // 종료 버튼 - 여기서 유저 정보를 보낼지 이 전 단계에서 보낼 지 흠... 여기서 보내자
            Button {
                viewModel.signUpCompleteButton(name: name, email: email, password: password, nickName: nickName, gender: gender, age: age, favoriteGenre: favoriteGenre)
                
            } label: {
                Text("완료")
                    .foregroundStyle(.white)
                    .bold()
                    .padding(EdgeInsets(top: 15, leading: 150, bottom: 15, trailing: 150))
                    .background(.brown)
                    .clipShape(.buttonBorder)
            }
            .navigationDestination(isPresented: $viewModel.endButtonTapped) {
                LoginView()
            }
            
            
        }
        .navigationBarBackButtonHidden()
    }
}

