//
//  Model.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 01.12.2022.
//

import Foundation
import SwiftUI

struct ListItemModel: Identifiable {
    let id: String = UUID().uuidString
    let text: String
    let icon: String
    var isSelected: Bool
}
