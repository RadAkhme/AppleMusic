//
//  ListView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 01.12.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var selectedRow: String?
    
    @State var musicItems = [
        ListItemModel(text: "Плейлисты", icon: "music.note.list", isSelected: false),
        ListItemModel(text: "Артисты", icon: "music.mic", isSelected: false),
        ListItemModel(text: "Альбомы", icon: "square.stack", isSelected: false),
        ListItemModel(text: "Песни", icon: "music.note", isSelected: false),
        ListItemModel(text: "Телешоу и фильмы", icon: "tv", isSelected: false),
        ListItemModel(text: "Видеоклипы", icon: "music.note.tv", isSelected: false),
        ListItemModel(text: "Жанры", icon: "guitars", isSelected: false),
        ListItemModel(text: "Сборники", icon: "person.2.crop.square.stack", isSelected: false),
        ListItemModel(text: "Авторы", icon: "music.quarternote.3", isSelected: false),
        ListItemModel(text: "Загружено", icon: "arrow.down.circle", isSelected: false),
        ListItemModel(text: "Домашняя коллекция", icon: "music.note.house", isSelected: false)
    ]
    
    var body: some View {
        VStack {
            List(selection: $selectedRow) {
                ForEach($musicItems) { $item in
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
        
    }
    
    func moveItem(from: IndexSet, to: Int) {
        musicItems.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
