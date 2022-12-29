//
//  SearchCollectionViewCell.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 29.12.2022.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    static let identifier = "SearchCollectionViewCell"
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 10
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(title)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: self.topAnchor),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            image.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            image.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            title.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 10),
            title.bottomAnchor.constraint(equalTo: image.bottomAnchor, constant: -10)
        ])
    }
    
    func setData(category: SearchСompilationModel) {
        image.image = UIImage(named: category.searchImage)
        title.text = category.searchName
    }
    
    override func prepareForReuse() {
        self.image.image = nil
        self.title.text = nil
    }
}
