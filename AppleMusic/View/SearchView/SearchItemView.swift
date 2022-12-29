//
//  SearchItemView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 27.12.2022.
//

import SwiftUI

struct SearchItemView: View {
    
    var categoryImage: String
    var categoryTitle: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(categoryImage)
                .resizable()
                .frame(maxWidth: 200, maxHeight: 130)
                .scaledToFill()
                .cornerRadius(10)
            
            Text(categoryTitle)
                .foregroundColor(.white)
                .font(.system(size: 15, weight: .bold))
                .padding(10)
        }
        
    }
}
