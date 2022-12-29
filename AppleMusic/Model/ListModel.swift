//
//  ListModel.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 01.12.2022.
//

import Foundation

struct ListModel: Identifiable {
    let id: String = UUID().uuidString
    let text: String
    let icon: String
    var isSelected: Bool
}

class ListItemModel: ObservableObject {
    @Published var musicItems = [
        ListModel(text: "Плейлисты", icon: "music.note.list", isSelected: false),
        ListModel(text: "Артисты", icon: "music.mic", isSelected: false),
        ListModel(text: "Альбомы", icon: "square.stack", isSelected: false),
        ListModel(text: "Песни", icon: "music.note", isSelected: false),
        ListModel(text: "Телешоу и фильмы", icon: "tv", isSelected: false),
        ListModel(text: "Видеоклипы", icon: "music.note.tv", isSelected: false),
        ListModel(text: "Жанры", icon: "guitars", isSelected: false),
        ListModel(text: "Сборники", icon: "person.2.crop.square.stack", isSelected: false),
        ListModel(text: "Авторы", icon: "music.quarternote.3", isSelected: false),
        ListModel(text: "Загружено", icon: "arrow.down.circle", isSelected: false),
        ListModel(text: "Домашняя коллекция", icon: "music.note.house", isSelected: false)
    ]
}
