//
//  MusicPlayer.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 02.12.2022.
//

import SwiftUI

struct MusicPlayer: View {
    
    @State var artist = "Flume"
    @State var track = "Ecdysis"
    @State var trackImage = "flume"

    @State var isPresented = false
    
    var body: some View {
        VStack {
            HStack {
                Image(trackImage)
                    .resizable()
                    .frame(width: 55, height: 55)
                    .cornerRadius(10)
                    .padding(.leading)
                
                Text(artist + " - " + track)
                    .font(.system(size: 20))
                    .padding(.leading, 5)
                
                Spacer()
                
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 18, height: 18)
                
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: 35, height: 18)
                    .padding()
            }
            .foregroundColor(.black)
            .padding(.vertical, 8)
            .background(Color.init(uiColor: .systemGray5))
            .onTapGesture(count: 2) {
                isPresented.toggle()
            }
            .fullScreenCover(isPresented: $isPresented) {
                MusicPlayerFullScreen(artist: $artist, track: $track, trackImage: $trackImage, isPresented: $isPresented)
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer()
    }
}
