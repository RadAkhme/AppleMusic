//
//  ContentView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 27.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isEditing = false
    
    var body: some View {
        TabView {
            ZStack(alignment: .top) {
                VStack {
                    if isEditing {
                        ListView()
                    } else {
                        LibraryView()
                    }
                }
                
                HStack(alignment: .top) {
                    Spacer()
                    Button(action: {
                        isEditing.toggle()
                    }, label: {
                        Text(self.isEditing ? "Готово" : "Править")
                            .foregroundColor(.red)
                    })
                    .padding()
                }
            }
            .tabItem {
                Image(systemName: "rectangle.stack.badge.play.fill")
                Text("Медиатека")
            }
            
            RadioView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
