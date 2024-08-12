//
//  EmailView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import SwiftUI

struct EmailView: View {
    
    @StateObject var viewModel = EmailViewViewModel()
    
    var body: some View {
        ScrollView {
            VStack{
                
                // 이름
                VStack(alignment: .leading){
                    Text("1")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("이름을 알려주세요!")
                        .font(.title2)
                        .bold()
                    
                    
                    TextField("이름 입력", text: $viewModel.name)
                        .padding()
                        .background(Color("SignUpTextFieldColor"))
                        .clipShape(.buttonBorder)
                        .foregroundStyle(Color("SignUpTextColor"))
                        .bold()
                        .shadow(radius: 2)
                        .textInputAutocapitalization(TextInputAutocapitalization(.none))
                    
                }
                .padding()
                
                
                // 이메일
                VStack(alignment: .leading){
                    Text("2")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("이메일을 입력해주세요!")
                        .font(.title2)
                        .bold()
                    
                    
                    TextField("이메일 입력", text: $viewModel.email)
                        .padding()
                        .background(Color("SignUpTextFieldColor"))
                        .clipShape(.buttonBorder)
                        .foregroundStyle(Color("SignUpTextColor"))
                        .bold()
                        .shadow(radius: 2)
                        .textInputAutocapitalization(TextInputAutocapitalization(.none))
                }
                .padding()
                
                
                // 비밀번호
                VStack(alignment: .leading){
                    Text("3")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("비밀번호를 입력해주세요!")
                        .font(.title2)
                        .bold()
                    
                    HStack{
                        if viewModel.passwordToggle {
                            TextField("비밀번호 입력", text: $viewModel.password)
                            Button {
                                viewModel.passwordToggle.toggle()
                            } label: {
                                Image(systemName: "eye")
                                    .padding(.trailing)
                            }
                        } else {
                            SecureField("비밀번호 입력", text: $viewModel.password)
                            
                            Button {
                                viewModel.passwordToggle.toggle()
                            } label: {
                                Image(systemName: "eye.slash")
                                    .padding(.trailing)
                                    .tint(.gray)
                            }
                        }
                    }
                    .padding()
                    .background(Color("SignUpTextFieldColor"))
                    .clipShape(.buttonBorder)
                    .foregroundStyle(Color("SignUpTextColor"))
                    .bold()
                    .shadow(radius: 2)
                    .textInputAutocapitalization(TextInputAutocapitalization(.none))
                    
                    
                    Text("비밀번호를 확인해주세요!")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    SecureField("다시 한 번 입력해주세요", text: $viewModel.passwordCheck)
                        .padding()
                        .background(Color("SignUpTextFieldColor"))
                        .clipShape(.buttonBorder)
                        .foregroundStyle(Color("SignUpTextColor"))
                        .bold()
                        .shadow(radius: 2)
                        .textInputAutocapitalization(TextInputAutocapitalization(.none))
                    
                    
                }
                .padding()
                .padding(.bottom, 30)
                
                
                Spacer()
                
                // 다음 버튼
                Button {
                    viewModel.next()
                    viewModel.nextButtonTapped = true
                } label: {
                    Text("다음")
                        .foregroundStyle(.white)
                        .bold()
                        .padding(EdgeInsets(top: 15, leading: 150, bottom: 15, trailing: 150))
                        .background(.brown)
                        .clipShape(.buttonBorder)
                }
                .navigationDestination(isPresented: $viewModel.nextButtonTapped) {
                    NickNameView()
                }
                
                
                
            }
            
        }
        
        
    }
}

#Preview {
    EmailView()
}

