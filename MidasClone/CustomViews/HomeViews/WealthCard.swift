//
//  WealthCard.swift
//  MidasClone
//
//  Created by Salih Gün on 23.03.2024.
//

import UIKit

class WealthCard: UIView {
    
    let descriptionText = UILabel()
    let price = UILabel()
    let customIcon = UIImageView()
    let separator = UIView()
    
    let padding: CGFloat = 12

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(text: String, priceText: String, image: UIImage){
        self.init()
        descriptionText.text = text
        price.text = priceText
        customIcon.image = image
    }
    
    private func configure() {
        onUpdateBackgroundColor()
        layer.borderWidth = 1
        layer.cornerRadius = 12
        addShadow()
        addSubviews(descriptionText,price,customIcon,separator)
    }
    
    func configureContent() {
        
        descriptionText.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        descriptionText.textColor = .secondaryLabel
        
        price.textColor = Colors.darkBlue
        price.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        separator.backgroundColor = .lightGray

        customIcon.tintColor = Colors.primary
        
        
        NSLayoutConstraint.activate([
            descriptionText.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -padding),
            descriptionText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            
            price.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            price.centerYAnchor.constraint(equalTo: centerYAnchor, constant: padding),
            
            customIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            customIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            customIcon.widthAnchor.constraint(equalToConstant: 20),
            customIcon.heightAnchor.constraint(equalToConstant: 20),
            
            separator.trailingAnchor.constraint(equalTo: customIcon.leadingAnchor, constant: -padding),
            separator.centerYAnchor.constraint(equalTo: centerYAnchor),
            separator.widthAnchor.constraint(equalToConstant: 0.5),
            separator.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
}


extension WealthCard {
    func onUpdateBackgroundColor() {
        layer.borderColor = Colors.lightBlue.cgColor

        if traitCollection.userInterfaceStyle == .light {
            backgroundColor = .white
        } else {
            backgroundColor = Colors.secondaryBackgroundColor
        }
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        onUpdateBackgroundColor()
    }
}
