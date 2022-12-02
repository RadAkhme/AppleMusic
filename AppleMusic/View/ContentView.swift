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
        NavigationStack {
            TabView {
                VStack {
                    if isEditing {
                        ListView()
                    } else {
                        LibraryView()
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
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: Button(action: {
                isEditing.toggle()
            }, label: {
                Text(self.isEditing ? "Готово" : "Править")
                    .foregroundColor(.red)
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
