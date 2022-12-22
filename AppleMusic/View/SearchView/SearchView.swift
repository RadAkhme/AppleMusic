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
                        SearchCompilationItem()
                    }
                } else {
                    SearchResultsView(searchText: $searchText)
                        .navigationBarHidden(true)
                }
                
                Spacer()
                
                MusicPlayer()
            }
            .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
