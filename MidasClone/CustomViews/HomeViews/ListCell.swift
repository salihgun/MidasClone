//
//  ListCell.swift
//  MidasClone
//
//  Created by Salih Gün on 25.03.2024.
//

import UIKit

class ListCell: UICollectionViewCell {
    static let reuseID = "ListCell"
    
    
    let emojiLabel = UILabel()
    let titleLabel = UILabel()
    let countLabel = UILabel()
    
    let padding:CGFloat = 12
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = Colors.tertiaryBackgroundColor
        layer.cornerRadius = 16
        addSubviews(emojiLabel,titleLabel,countLabel)
        
        titleLabel.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        
        countLabel.font = UIFont.systemFont(ofSize: 12,weight: .medium)
        countLabel.textColor = .secondaryLabel
        
        NSLayoutConstraint.activate([
            emojiLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            emojiLabel.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            
            titleLabel.bottomAnchor.constraint(equalTo: countLabel.topAnchor, constant: -5),
            titleLabel.leadingAnchor.constraint(equalTo: emojiLabel.leadingAnchor),
            
            countLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            countLabel.leadingAnchor.constraint(equalTo: emojiLabel.leadingAnchor)
        ])
    }
    
    func set(item: StockList){
        emojiLabel.text = item.emoji
        titleLabel.text = item.title
        countLabel.text = "\(item.count) Hisse"
    }
}
