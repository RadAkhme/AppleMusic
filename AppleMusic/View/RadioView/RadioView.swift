//
//  RadioView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 02.12.2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    TopRadioView()
                    
                    Divider()
                        .padding(.horizontal)
                    
                    BottomRadioView()
                }
                .navigationTitle("Радио")
                
                MusicPlayer()
            }
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
