//
//  RadioView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 02.12.2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Радио")
            Spacer()
            MusicPlayer()
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
