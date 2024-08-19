//
//  TastePickerView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import SwiftUI

struct TastePickerView: View {

    @StateObject var viewModel = TastePickerViewViewModel()
    
    @Binding var name: String
    @Binding var email: String
    @Binding var password: String
    @Binding var nickName: String
    @Binding var gender: String
    @Binding var age: String
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading){
                Text("7")
                    .padding()
                    .background(.brown)
                    .clipShape(Circle())
                    .foregroundStyle(.white)
                
                Text("관심있는 주제를 3개 이상 선택해주세요!")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 20)
                
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                    ForEach(viewModel.genreRanges, id: \.self) { genreRange in
                        Button(action: {
                            
                            if viewModel.favoriteGenre.contains(genreRange[0]) {
                                let genreIndex: Int = viewModel.favoriteGenre.firstIndex(of: genreRange[0]) ?? 0
                                viewModel.favoriteGenre.remove(at: genreIndex)
                            } else {
                                viewModel.favoriteGenre.append(genreRange[0])
                            }
                            
                            
                        }) {
                            VStack{
                                Image(systemName: genreRange[1])
                                Text(genreRange[0])
                            }
                            .foregroundColor(viewModel.favoriteGenre.contains(genreRange[0]) ? .black : .gray)
                            .fontWeight(viewModel.favoriteGenre.contains(genreRange[0]) ? .bold : .regular)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(viewModel.favoriteGenre.contains(genreRange[0]) ? .white : .white.opacity(0.8))
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
                SignUpCompleteView(name: $name, email: $email, password: $password, nickName: $nickName, gender: $gender, age: $age, favoriteGenre: $viewModel.favoriteGenre)
            }
            
            
        }


    }
}

