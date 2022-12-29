//
//  MusicModel.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 22.12.2022.
//

import Foundation

struct MusicModel: Identifiable {
    let id = UUID().uuidString
    let artistOrAlbum: String
    let track: String
    let image: String
    let musicType: MusicType
    
    enum MusicType: String {
        case music = "Песня"
        case playlist = "Плейлист"
    }
}

class MusicItemModel: ObservableObject {
    @Published var musicItem = [
        MusicModel(artistOrAlbum: "Каста", track: "Макарена", image: "music1", musicType: .music),
        MusicModel(artistOrAlbum: "Apple Music Электроника", track: "В потоке", image: "playlist5", musicType: .playlist),
        MusicModel(artistOrAlbum: "Flume & Laurel", track: "I Can't Tell", image: "music3", musicType: .music),
        MusicModel(artistOrAlbum: "Miyagi", track: "Captain", image: "music2", musicType: .music),
        MusicModel(artistOrAlbum: "Apple Music Альтернатива", track: "Рок-танцы навсегда", image: "playlist1", musicType: .playlist),
        MusicModel(artistOrAlbum: "Flight Facilities", track: "Crave You", image: "music5", musicType: .music),
        MusicModel(artistOrAlbum: "Young The Giant", track: "Mr. Know-It-All", image: "music7", musicType: .music),
        MusicModel(artistOrAlbum: "Apple Music Класика", track: "Музыка без слов", image: "playlist3", musicType: .playlist),
        MusicModel(artistOrAlbum: "Apple Music Альтернатива", track: "ALT CTRL", image: "playlist4", musicType: .playlist),
        MusicModel(artistOrAlbum: "SBTRKT", track: "Wildfire", image: "music4", musicType: .music),
        MusicModel(artistOrAlbum: "Apple Music Хип-хоп", track: "Эффект Дрейка", image: "playlist6", musicType: .playlist),
        MusicModel(artistOrAlbum: "Apple Music Инди", track: "Инди-хиты", image: "playlist7", musicType: .playlist),
        MusicModel(artistOrAlbum: "Imagine Dragons", track: "Bones", image: "music6", musicType: .music),
        MusicModel(artistOrAlbum: "Apple Music Танцевальная", track: "Чил-хаус", image: "playlist2", musicType: .playlist)
    ]
}

class MusicPlayerCondition: ObservableObject {
    @Published var isPresented: Bool = Bool()
}
