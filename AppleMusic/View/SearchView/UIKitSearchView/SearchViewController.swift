//
//  SearchViewController.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 29.12.2022.
//

import UIKit

class SearchViewController: UIViewController {

    //MARK: - Outlets
        
        private lazy var collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.delegate = self
            collectionView.dataSource = self
            
            collectionView.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: SearchCollectionViewCell.identifier)
            collectionView.register(SearchCollectionHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SearchCollectionHeaderView.identifier)
            
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            return collectionView
        }()
        
        // MARK: - Lifecycle

        override func viewDidLoad() {
            super.viewDidLoad()
            setupHierarchy()
            setupLayout()
        }
        
        //MARK: - Setup
        
        private func setupHierarchy() {
            view.addSubview(collectionView)
        }
        
        private func setupLayout() {
            NSLayoutConstraint.activate([
                collectionView.topAnchor.constraint(equalTo: view.topAnchor),
                collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        }
    }

    extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            UIEdgeInsets(top: 0, left: 15, bottom: 5, right: 15)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width / 2.23, height: (view.frame.width / 2.22) * 0.65)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: 40)
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            SearchСompilationModel.searchItems.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: SearchCollectionViewCell.identifier, for: indexPath) as? SearchCollectionViewCell else { return UICollectionViewCell() }
            let category = SearchСompilationModel.searchItems[indexPath.row]
            item.setData(category: category)
            return item
        }
        
        func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SearchCollectionHeaderView.identifier, for: indexPath) as? SearchCollectionHeaderView else { return UICollectionReusableView() }
            return header
        }
    }
