//
//  SearchСompilationItem.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 18.12.2022.
//

import SwiftUI

struct SearchCompilationItem: View {
    
    @ObservedObject var searchItems = SearchItemsModel()
    
    var columns = [
        GridItem(.adaptive(minimum: 100, maximum: 300)),
        GridItem(.adaptive(minimum: 100, maximum: 300))
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
                        ZStack(alignment: .bottom) {
                            Image(index.searchImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 175, height: 120)
                                .clipShape(Rectangle())
                                .cornerRadius(10)
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(index.searchName)
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .bold))
                                        .padding(10)
                                }
                                
                                Spacer()
                            }
                        }
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
