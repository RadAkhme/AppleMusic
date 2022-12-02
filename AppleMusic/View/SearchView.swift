//
//  SearchView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 02.12.2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Поиск")
            Spacer()
            MusicPlayer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
