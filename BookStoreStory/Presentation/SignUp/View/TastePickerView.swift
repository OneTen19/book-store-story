//
//  TastePickerView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import SwiftUI

struct TastePickerView: View {
    @State var genre: [String] = []
    
    let genreRanges: [[String]] = [["건강/취미","figure.strengthtraining.traditional"], ["경제경영", "chart.bar"], ["고전","text.book.closed"], ["과학", "flask"], ["사회과학",  "theatermasks"], ["소설/시/희곡", "books.vertical"], ["에세이", "pencil.and.list.clipboard"], ["여행", "airplane.departure"], ["역사", "globe.asia.australia"], ["예술/대중문화", "paintbrush"], ["요리/살림", "frying.pan"], ["외국어", "abc"], ["인문학", "person.3.fill"], ["자기계발", "figure.run"], ["장르소설", "magazine"], ["종교/역학", "crown.fill"], ["좋은부모", "figure.2.and.child.holdinghands"], ["컴퓨터/모바일", "macbook.and.iphone"]]
    
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading){
                Text("6")
                    .padding()
                    .background(.brown)
                    .clipShape(Circle())
                    .foregroundStyle(.white)
                
                Text("관심있는 주제를 3개 이상 선택해주세요!")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 20)
                
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                    ForEach(genreRanges, id: \.self) { genreRange in
                        Button(action: {
                            
                            if genre.contains(genreRange[0]) {
                                let genreIndex: Int = genre.firstIndex(of: genreRange[0]) ?? 0
                                genre.remove(at: genreIndex)
                            } else {
                                genre.append(genreRange[0])
                            }
                            
                            
                        }) {
                            VStack{
                                Image(systemName: genreRange[1])
                                Text(genreRange[0])
                            }
                            .foregroundColor(genre.contains(genreRange[0]) ? .black : .gray)
                            .fontWeight(genre.contains(genreRange[0]) ? .bold : .regular)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(genre.contains(genreRange[0]) ? .white : .white.opacity(0.8))
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

#Preview {
    TastePickerView()
}
