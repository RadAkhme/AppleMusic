//
//  SearchResultsItem.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 21.12.2022.
//

import SwiftUI

struct SearchResultsItem: View {
    
    @Binding var searchText: String
    @ObservedObject var musicItem = MusicItemModel()
    
    var body: some View {
        List {
            Section(header: HStack {
                Text("Недавние поиски")
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Очистить")
                        .foregroundColor(.red)
                })
            }
                .font(.system(size: 14))
            ){
                if searchText.isEmpty {
                    ForEach(musicItem.musicItem) { item in
                        SearchListView(artistOrAlbum: item.artistOrAlbum, track: item.track, image: item.image, musicType: item.musicType)
                    }
                }
                
                ForEach(musicItem.musicItem.filter { $0.track.lowercased().contains(searchText.lowercased()) || $0.artistOrAlbum.lowercased().contains(searchText.lowercased())
                }) { item in
                    SearchListView(artistOrAlbum: item.artistOrAlbum, track: item.track, image: item.image, musicType: item.musicType)
                }
            }
        }
        .listStyle(.inset)
    }
}
