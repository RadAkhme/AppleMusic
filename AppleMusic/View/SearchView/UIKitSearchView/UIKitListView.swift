//
//  UIKitListView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 25.12.2022.
//

import SwiftUI
import UIKit

struct UIKitListView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UIViewController {
        return SearchViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}
