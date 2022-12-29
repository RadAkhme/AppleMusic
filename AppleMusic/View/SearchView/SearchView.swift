//
//  SearchView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 02.12.2022.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var isEditing = false
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText, isEditing: $isEditing)

                if !isEditing {
                    NavigationLink {
                        TopRadioView()
                        
                        BottomRadioView()
                            .navigationTitle("Подборка")
                    } label: {
                        if isPresented {
                            UIKitListView()
                        } else {
                            SearchCompilationItem()
                        }
                    }
                } else {
                    SearchResultsView(searchText: $searchText)
                        .navigationBarHidden(true)
                }
                
                MusicPlayer()
            }
            .navigationTitle("Поиск")
            .navigationBarItems(trailing: HStack{
                Button(action: {
                    isPresented.toggle()
                }, label: {
                    Text(isPresented ? "SwiftUI" : "UIKit")
                })
                .foregroundColor(.red)
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
