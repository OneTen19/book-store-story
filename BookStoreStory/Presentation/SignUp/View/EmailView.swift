//
//  EmailView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import SwiftUI

struct EmailView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordCheck: String = ""
    @State var passwordToggle: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                
                // 이메일
                VStack(alignment: .leading){
                    Text("1")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("이메일을 입력해주세요!")
                        .font(.title2)
                        .bold()
                    
                    
                    TextField("이메일 입력", text: $email)
                        .padding()
                        .background(.white)
                        .clipShape(.buttonBorder)
                        .foregroundStyle(.black)
                        .bold()
                        .shadow(radius: 2)
                }
                .padding()
                
                
                // 비밀번호
                VStack(alignment: .leading){
                    Text("2")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("비밀번호를 입력해주세요!")
                        .font(.title2)
                        .bold()
                    
                    HStack{
                        if passwordToggle {
                            TextField("비밀번호 입력", text: $password)
                            Button {
                                passwordToggle.toggle()
                            } label: {
                                Image(systemName: "eye")
                                    .padding(.trailing)
                            }
                        } else {
                            SecureField("비밀번호 입력", text: $password)
                            Button {
                                passwordToggle.toggle()
                            } label: {
                                Image(systemName: "eye.slash")
                                    .padding(.trailing)
                                    .tint(.gray)
                            }
                        }
                    }
                    .padding()
                    .background(.white)
                    .clipShape(.buttonBorder)
                    .foregroundStyle(.black)
                    .bold()
                    .shadow(radius: 2)
                    
                    
                    Text("비밀번호를 확인해주세요!")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    SecureField("다시 한 번 입력해주세요", text: $passwordCheck)
                        .padding()
                        .background(.white)
                        .clipShape(.buttonBorder)
                        .foregroundStyle(.black)
                        .bold()
                        .shadow(radius: 2)
                    
                    
                }
                .padding()
                
                
                Spacer()
                
                
                // 다음 버튼
                NavigationLink(destination: NickNameView()) {
                    Text("다음")
                        .foregroundStyle(.white)
                        .bold()
                        .padding(EdgeInsets(top: 15, leading: 150, bottom: 15, trailing: 150))
                        .background(.brown)
                        .clipShape(.buttonBorder)
                    
                }
                
                
                
            }
        }
    }
}

#Preview {
    EmailView()
}