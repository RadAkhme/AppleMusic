//
//  SearchListView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 21.12.2022.
//

import SwiftUI

struct SearchListView: View {
    
    var artistOrAlbum: String = ""
    var track: String = ""
    var image: String = ""
    var musicType: MusicModel.MusicType
    
    var body: some View {
        HStack {
            Image(self.image)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(5)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(self.track)
                    .bold()
                
                HStack {
                    Text(self.musicType.rawValue)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 3, height: 3)
                    
                    Text(self.artistOrAlbum)
                }
                .foregroundColor(.secondary)
            }
            .font(.system(size: 12))
            
            Spacer()
            
            Button {} label: {
                Image(systemName: (self.musicType == .playlist) ? "chevron.right" : "ellipsis")
                    .frame(width: 10, height: 10, alignment: .center)
                    .font(.system(size: 12))
            }
        }
    }
}
