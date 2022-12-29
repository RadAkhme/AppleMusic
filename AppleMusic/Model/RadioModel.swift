//
//  RadioModel.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 22.12.2022.
//

import Foundation

struct RadioModel: Identifiable {
    let id: String = UUID().uuidString
    var title: String
    var description: String
    var image: String
}

class RadioItemsModel: ObservableObject {
    @Published var radioItems = [
        RadioModel(title: "Полное погружение", description: "Dissolve by Absofacto - Ukulele chords songs", image: "radio4"),
        RadioModel(title: "Домашняя волна", description: "Frank Ocean Announces Homer Radio", image: "radio5"),
        RadioModel(title: "Избранное кантри", description: "Apple Music Country showcases", image: "radio1"),
        RadioModel(title: "Эксклюзивный выпуск", description: "Africa Edition with Ebro Darden & LootLove", image: "radio7"),
        RadioModel(title: "Внеземной выпуск", description: "Surviving Mars: Revelation Radio Pack", image: "radio3"),
        RadioModel(title: "Только хиты", description: "Будь на волне со всем миром", image: "radio6"),
        RadioModel(title: "Beats 1", description: "Apple Music Beats 1", image: "radio2")
    ]
}
