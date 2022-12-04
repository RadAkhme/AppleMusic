//
//  TopRadioView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 04.12.2022.
//

import SwiftUI

struct TopRadioView: View {
    
    var rows = [GridItem(.fixed(300), spacing: 10)]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(RadioModel.radioItems) { index in
                    VStack (alignment: .leading){
                        Text("Избранная радиостанция")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                        Text(index.title)
                            .font(.system(size: 18))
                            .bold()
                        Image(index.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 350, height: 250, alignment: .top)
                            .cornerRadius(5)
                            .clipShape(Rectangle())
                    }
                }
            }
            .padding(.leading, 15)
        }
        .padding(.bottom)
    }
}

struct TopRadioView_Previews: PreviewProvider {
    static var previews: some View {
        TopRadioView()
    }
}
