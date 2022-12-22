//
//  SearchModel.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 22.12.2022.
//

import Foundation

struct SearchСompilationModel: Identifiable {
    let id: String = UUID().uuidString
    let searchName: String
    let searchImage: String
}

class SearchItemsModel: ObservableObject {
    @Published var searchItems = [
        SearchСompilationModel(searchName: "Пространственное аудио", searchImage: "search10"),
        SearchСompilationModel(searchName: "Альтернативная", searchImage: "search7"),
        SearchСompilationModel(searchName: "Электроника", searchImage: "search1"),
        SearchСompilationModel(searchName: "Хип-хоп на русском", searchImage: "search8"),
        SearchСompilationModel(searchName: "Новый год", searchImage: "search9"),
        SearchСompilationModel(searchName: "Главное", searchImage: "search12"),
        SearchСompilationModel(searchName: "Спокойствие", searchImage: "search2"),
        SearchСompilationModel(searchName: "Для детей", searchImage: "search5"),
        SearchСompilationModel(searchName: "Спорт", searchImage: "search3"),
        SearchСompilationModel(searchName: "Чарты", searchImage: "search11"),
        SearchСompilationModel(searchName: "Сон", searchImage: "search6"),
        SearchСompilationModel(searchName: "Хиты", searchImage: "search4")
    ]
}
