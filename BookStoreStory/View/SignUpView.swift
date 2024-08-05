//
//  SignUpView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/5/24.
//

import SwiftUI

struct SignUpView: View {
    @State var nickName: String = ""
    @State var gender: String = "남자"
    @State var age: String = "19세 이하"
    
    let genderRanges = ["남자", "여자"]
    let ageRanges = ["19세 이하", "20~24세", "25~29세", "30~34세", "35~40세", "41세 이상"]
    
    var body: some View {
        VStack{
            
            // 닉네임
            VStack(alignment: .leading){
                Text("1")
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
                Text("2")
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
                                .foregroundColor(gender == genderRange ? .white : .black)
                                .bold()
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(gender == genderRange ? .brown : .white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                        }
                    }
                }
                
            }
            .padding()
            
            
            // 나이
            VStack(alignment: .leading){
                Text("3")
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
                                .foregroundColor(age == ageRange ? .white : .black)
                                .bold()
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(age == ageRange ? .brown : .white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                        }
                    }
                }
                
            }
            .padding()
            
            Spacer()
            
            
        }
    }
}

#Preview {
    SignUpView()
}

