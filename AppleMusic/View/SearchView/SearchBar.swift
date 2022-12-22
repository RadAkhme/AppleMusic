//
//  SearchBar.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 18.12.2022.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Артисты, песни, тексты и др.", text: $searchText)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: { searchText = "" }, label: {
                                Image(systemName: "xmark.circle.fill")
                            })
                            .foregroundColor(Color(.systemGray3))
                            .padding(.trailing, 5)
                        }
                    })
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .onTapGesture {
                    isEditing = true
                }
            
            
            if isEditing {
                Button {
                    isEditing = false
                    searchText = ""
                } label: {
                    Text("Отменить")
                        .padding(.trailing, 15)
                }
                .foregroundColor(.red)
            }
        }
    }
}
