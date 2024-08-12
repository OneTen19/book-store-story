//
//  TastePickerViewViewModel.swift
//  BookStoreStory
//
//  Created by OneTen on 8/6/24.
//

import Foundation

class TastePickerViewViewModel: ObservableObject {
    @Published var nextButtonTapped = false
    
    @Published var favoriteGenre: [String] = []
    
    let genreRanges: [[String]] = [["건강/취미","figure.strengthtraining.traditional"], ["경제경영", "chart.bar"], ["고전","text.book.closed"], ["과학", "flask"], ["사회과학",  "theatermasks"], ["소설/시/희곡", "books.vertical"], ["에세이", "pencil.and.list.clipboard"], ["여행", "airplane.departure"], ["역사", "globe.asia.australia"], ["예술/대중문화", "paintbrush"], ["요리/살림", "frying.pan"], ["외국어", "abc"], ["인문학", "person.3.fill"], ["자기계발", "figure.run"], ["장르소설", "magazine"], ["종교/역학", "crown.fill"], ["좋은부모", "figure.2.and.child.holdinghands"], ["컴퓨터/모바일", "macbook.and.iphone"]]
    
    init() {}

    
    func next() {
        //
    }
    
    
}
