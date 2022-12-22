//
//  BottomRadioView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 04.12.2022.
//

import SwiftUI

struct BottomRadioView: View {
    
    @ObservedObject var radioItems = RadioItemsModel()
    
    var columns = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .leading) {
                Text("Станции")
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                
                ForEach(radioItems.radioItems) { index in
                    HStack {
                        Image(index.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 120, height: 120, alignment: .center)
                            .clipShape(Rectangle())
                            .padding(.leading, 15)
                        
                        VStack(alignment: .leading) {
                            Text(index.title)
                                .bold()
                            
                            Text(index.description)
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 5)
                    }
                    .padding(.trailing)
                    
                    Divider()
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct BottomRadioView_Previews: PreviewProvider {
    static var previews: some View {
        BottomRadioView()
    }
}
