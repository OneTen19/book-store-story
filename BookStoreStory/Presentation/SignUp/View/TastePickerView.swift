//
//  TastePickerView.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import SwiftUI

struct TastePickerView: View {
    @State var genre: String = "19세 이하"
    
    let genreRanges = ["19세 이하", "20~24세", "25~29세", "30~34세", "35~40세", "41세 이상"]
    
    
    var body: some View {
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
    }
}

#Preview {
    TastePickerView()
}
