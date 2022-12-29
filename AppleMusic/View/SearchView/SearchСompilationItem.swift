//
//  SearchСompilationItem.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 18.12.2022.
//

import SwiftUI

struct SearchCompilationItem: View {
    
    @ObservedObject var searchItems = SearchItemsModel()
    
    var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Поиск по категориям")
                        .font(.title3)
                        .foregroundColor(.black)
                        .bold()
                        .padding(.horizontal, 15)
                    
                    Spacer()
                }
                
                LazyVGrid(columns: columns) {
                    ForEach(searchItems.searchItems) { index in
                        SearchItemView(categoryImage: index.searchImage, categoryTitle: index.searchName)
                    }
                }
                .padding(.horizontal, 15)
            }
        }
    }
}

struct SearchCompilationItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchCompilationItem()
    }
}
