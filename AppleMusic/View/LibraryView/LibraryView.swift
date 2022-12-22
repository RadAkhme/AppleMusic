//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 27.11.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Ищете свою музыку?")
                    .font(.title2)
                    .bold()
                Text("Здесь появиться купленная Вами в iTunes Store музыка.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30.0)
                Spacer()
                MusicPlayer()
            }
            .navigationTitle("Медиатека")
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
