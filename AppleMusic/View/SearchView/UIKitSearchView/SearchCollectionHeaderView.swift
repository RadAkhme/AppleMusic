//
//  SearchCollectionHeaderView.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 26.12.2022.
//

import UIKit

class SearchCollectionHeaderView: UICollectionReusableView {

        static let identifier = "Header"

        // MARK: - Outlets

        private lazy var headerTitle: UILabel = {
            let header = UILabel()
            header.text = "Поиск по категориям"
            header.font = .systemFont(ofSize: 20, weight: .semibold)
            header.translatesAutoresizingMaskIntoConstraints = false
            return header
        }()

        // MARK: - Lifecycle

        override init(frame: CGRect) {
            super.init(frame: frame)
            setupHeirarchy()
            setupLayout()
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        // MARK: - Setup

        private func setupHeirarchy() {
            addSubview(headerTitle)
        }

        private func setupLayout() {
            NSLayoutConstraint.activate([
                headerTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            ])
        }
    }
