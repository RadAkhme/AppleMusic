//
//  MusicPlayer.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 02.12.2022.
//

import SwiftUI

struct MusicPlayer: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(height: 65)
                    .foregroundColor(.primary)
                    .opacity(0.04)
                HStack {
                    Image("album")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .cornerRadius(10)
                        .padding(.leading)
                    Text("Flume - Ecdysis")
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
            }
        }
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer()
    }
}
