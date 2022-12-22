//
//  SearchResultsView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 20.12.2022.
//

import SwiftUI

struct SearchResultsView: View {
    
    @Binding var searchText: String
    @State private var selected = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("")) {
                Text("Apple Music").tag(0)
                
                Text("Ваша Медиатека").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.leading, .trailing], 15)
            
            if selected == 0 {
                SearchResultsItem(searchText: $searchText)
            } else {
                Spacer()
                
                Text("Ваша медиатека пуста")
                
                Spacer()
            }
        }
    }
}
