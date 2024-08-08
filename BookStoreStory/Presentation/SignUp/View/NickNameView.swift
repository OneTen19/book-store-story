//
//  SignUpView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/5/24.
//

import SwiftUI

struct NickNameView: View {

    
    @State var nickName: String = ""
    @State var gender: String = "남자"
    @State var age: String = "19세 이하"
    
    let genderRanges = ["남자", "여자"]
    let ageRanges = ["19세 이하", "20~24세", "25~29세", "30~34세", "35~40세", "41세 이상"]
    
    var body: some View {
            ScrollView{
                VStack{
                    
                    // 닉네임
                    VStack(alignment: .leading){
                        Text("3")
                            .padding()
                            .background(.brown)
                            .clipShape(Circle())
                            .foregroundStyle(.white)
                        
                        Text("뭐라고 불러드릴까요?")
                            .font(.title2)
                            .bold()
                        
                        HStack{
                            TextField("닉네임 입력", text: $nickName)
                                .padding()
                                .background(.white)
                                .clipShape(.buttonBorder)
                                .foregroundStyle(.black)
                                .bold()
                                .shadow(radius: 2)
                                .onChange(of: nickName) {
                                    if nickName.count > 9 {
                                        nickName = String(nickName.prefix(9))
                                    }
                                }
                            
                            Text("\(nickName.count)/9")
                                .padding()
                        }
                        
                        
                    }
                    .padding()
                    
                    
                    // 성별
                    VStack(alignment: .leading){
                        Text("4")
                            .padding()
                            .background(.brown)
                            .clipShape(Circle())
                            .foregroundStyle(.white)
                        
                        Text("성별을 알려주세요!")
                            .font(.title2)
                            .bold()
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                            ForEach(genderRanges, id: \.self) { genderRange in
                                Button(action: {
                                    gender = genderRange
                                }) {
                                    Text(genderRange)
                                        .foregroundColor(gender == genderRange ? .brown : .gray)
                                        .fontWeight(gender == genderRange ? .bold : .regular)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(gender == genderRange ? .white : .white.opacity(0.3))
                                        .clipShape(.buttonBorder)
                                        .shadow(radius: 2)
                                }
                            }
                        }
                        
                    }
                    .padding()
                    
                    
                    // 나이
                    VStack(alignment: .leading){
                        Text("5")
                            .padding()
                            .background(.brown)
                            .clipShape(Circle())
                            .foregroundStyle(.white)
                        
                        Text("나이를 알려주세요!")
                            .font(.title2)
                            .bold()
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                            ForEach(ageRanges, id: \.self) { ageRange in
                                Button(action: {
                                    age = ageRange
                                }) {
                                    Text(ageRange)
                                        .foregroundColor(age == ageRange ? .brown : .gray)
                                        .fontWeight(age == ageRange ? .bold : .regular)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(age == ageRange ? .white : .white.opacity(0.3))
                                        .clipShape(.buttonBorder)
                                        .shadow(radius: 2)
                                }
                            }
                        }
                        
                    }
                    .padding()
                    .padding(.bottom, 20)
                    
                    
                    // 다음 버튼
                    NavigationLink(destination: TastePickerView()) {
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
    NickNameView()
}

