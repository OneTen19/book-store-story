//
//  LoginView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/2/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var path: NavigationPath = .init()
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
        NavigationStack(path: $path){
            VStack{
                
                // logo
                VStack(alignment: .center){
                    Text("다 같이 만들어가는")
                        .foregroundStyle(.gray)
                    Text("책방이야기")
                        .font(.system(size: 50))
                }
                .padding()
                
                Image(systemName: "book")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Spacer()
                
                
                // email & password
                VStack(alignment: .leading){
                    TextField("아이디 입력", text: $viewModel.emailText)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                        .background(Color("LoginViewTextFieldColor"))
                        .clipShape(.buttonBorder)
                        .foregroundStyle(.black)
                    
                    
                    
                    HStack{
                        if viewModel.passwordToggle {
                            TextField("비밀번호 입력", text: $viewModel.passwordText)
                            Button {
                                viewModel.passwordToggle.toggle()
                            } label: {
                                Image(systemName: "eye")
                                    .padding(.trailing)
                            }
                        } else {
                            SecureField("비밀번호 입력", text: $viewModel.passwordText)
                            Button {
                                viewModel.passwordToggle.toggle()
                            } label: {
                                Image(systemName: "eye.slash")
                                    .padding(.trailing)
                                    .tint(.gray)
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    .background(Color("LoginViewTextFieldColor"))
                    .foregroundStyle(.black)
                    .clipShape(.buttonBorder)
                }
                .padding()
                
                
                // login button
                Button {
                    // login
                } label: {
                    Text("로그인")
                        .foregroundStyle(Color("LoginButtonTextColor"))
                        .bold()
                }
                .padding(EdgeInsets(top: 15, leading: 150, bottom: 15, trailing: 150))
                .background(Color("LoginButtonColor"))
                .clipShape(.buttonBorder)
                
                
                // sign up line
                HStack{
                    
                    // 아이디 찾기
                    NavigationLink {
                        EmailView()
                    } label: {
                        Text("아이디 찾기")
                            .font(.subheadline)
                            .foregroundStyle(Color("LoginViewTextColor"))
                    }
                    
                    Divider()
                        .frame(height: 20)
                        .background(Color("LoginViewTextColor"))
                    
                    
                    // 비밀번호 찾기
                    NavigationLink {
                        EmailView()
                    } label: {
                        Text("비밀번호 찾기")
                            .font(.subheadline)
                            .foregroundStyle(Color("LoginViewTextColor"))
                    }
                    
                    Divider()
                        .frame(height: 20)
                        .background(Color("LoginViewTextColor"))
                    
                    // 회원가입
                    NavigationLink {
                        EmailView()
                    } label: {
                        Text("회원가입")
                            .font(.subheadline)
                            .foregroundStyle(Color("LoginViewTextColor"))
                    }
                    
                    
                    
                }
                .padding()
                
                
                // divider
                HStack{
                    VStack{Divider().background(Color("LoginViewTextColor"))}
                    Text("SNS 계정으로 로그인")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    VStack{Divider().background(Color("LoginViewTextColor"))}
                }
                .padding()
                
                
                // sns login line
                HStack{
                    Spacer()
                    
                    // kakao login
                    Image(systemName: "message.fill")
                        .frame(width: 40, height: 40)
                        .background(.yellow)
                        .foregroundStyle(.black)
                        .clipShape(Circle())
                    Spacer()
                    
                    // naver login
                    Text("N")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .frame(width: 40, height: 40)
                        .background(.green)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                    Spacer()
                    
                    // google login
                    Image(.googleLogo)
                        .frame(width: 40, height: 40)
                        .background(.white)
                        .foregroundStyle(.black)
                        .clipShape(Circle())
                        .shadow(radius: 1)
                    Spacer()
                    
                    // facebook login
                    Text("f")
                        .font(.title)
                        .bold()
                        .frame(width: 40, height: 40)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                    Spacer()
                    
                    // apple login
                    Image(systemName: "applelogo")
                        .frame(width: 40, height: 40)
                        .background(.black)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                }
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
        
    }
}

#Preview {
    LoginView()
}

