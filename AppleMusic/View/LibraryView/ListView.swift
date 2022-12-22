//
//  ListView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 01.12.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var selectedRow: String?
    @ObservedObject var musicItems = ListItemModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(selection: $selectedRow) {
                    ForEach($musicItems.musicItems) { $item in
                        HStack {
                            Image(systemName: item.isSelected ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    item.isSelected.toggle()
                                }
                                .foregroundColor(item.isSelected ? .red : .gray)
                            Image(systemName: item.icon)
                                .foregroundColor(.red)
                            Text(item.text)
                        }
                    }
                    .onMove(perform: moveItem)
                }
                .listStyle(.plain)
                .environment(\.editMode, .constant(EditMode.active))
                
                Spacer()
                
                MusicPlayer()
            }
            .navigationBarTitle("Медиатека")
        }
    }
    
    func moveItem(from: IndexSet, to: Int) {
        musicItems.musicItems.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
