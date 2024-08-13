//
//  SignUpView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/5/24.
//

import SwiftUI

struct NickNameView: View {
    @StateObject var viewModel = NickNameViewViewModel()
    
    var body: some View {
        ScrollView{
            VStack{
                
                // 닉네임
                VStack(alignment: .leading){
                    Text("4")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("뭐라고 불러드릴까요?")
                        .font(.title2)
                        .bold()
                    
                    HStack{
                        TextField("닉네임 입력", text: $viewModel.nickName)
                            .padding()
                            .background(.white)
                            .clipShape(.buttonBorder)
                            .foregroundStyle(.black)
                            .bold()
                            .shadow(radius: 2)
                            .onChange(of: viewModel.nickName) {
                                if viewModel.nickName.count > 9 {
                                    viewModel.nickName = String(viewModel.nickName.prefix(9))
                                }
                            }
                        
                        Text("\(viewModel.nickName.count)/9")
                            .padding()
                    }
                    
                    
                }
                .padding()
                
                
                // 성별
                VStack(alignment: .leading){
                    Text("5")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("성별을 알려주세요!")
                        .font(.title2)
                        .bold()
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(viewModel.genderRanges, id: \.self) { genderRange in
                            Button(action: {
                                viewModel.gender = genderRange
                            }) {
                                Text(genderRange)
                                    .foregroundColor(viewModel.gender == genderRange ? .brown : .gray)
                                    .fontWeight(viewModel.gender == genderRange ? .bold : .regular)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(viewModel.gender == genderRange ? .white : .white.opacity(0.3))
                                    .clipShape(.buttonBorder)
                                    .shadow(radius: 2)
                            }
                        }
                    }
                    
                }
                .padding()
                
                
                // 나이
                VStack(alignment: .leading){
                    Text("6")
                        .padding()
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                    
                    Text("나이를 알려주세요!")
                        .font(.title2)
                        .bold()
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(viewModel.ageRanges, id: \.self) { ageRange in
                            Button(action: {
                                viewModel.age = ageRange
                            }) {
                                Text(ageRange)
                                    .foregroundColor(viewModel.age == ageRange ? .brown : .gray)
                                    .fontWeight(viewModel.age == ageRange ? .bold : .regular)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(viewModel.age == ageRange ? .white : .white.opacity(0.3))
                                    .clipShape(.buttonBorder)
                                    .shadow(radius: 2)
                            }
                        }
                    }
                    
                }
                .padding()
                .padding(.bottom, 20)
                
                // 경고창
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(Color.red)
                }
                
                
                // 다음 버튼
                Button {
                    viewModel.next()
                } label: {
                    Text("다음")
                        .foregroundStyle(.white)
                        .bold()
                        .padding(EdgeInsets(top: 15, leading: 150, bottom: 15, trailing: 150))
                        .background(.brown)
                        .clipShape(.buttonBorder)
                }
                .navigationDestination(isPresented: $viewModel.nextButtonTapped) {
                    TastePickerView()
                }
                
                
                
            }
            
        }
    }
    
}

#Preview {
    NickNameView()
}

