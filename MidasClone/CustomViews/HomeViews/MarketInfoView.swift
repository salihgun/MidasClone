//
//  MarketInfoView.swift
//  MidasClone
//
//  Created by Salih Gün on 22.03.2024.
//

import UIKit

class MarketInfoView: UIView {
    let biggerCircle = UIView()
    let innerCircle = UIView()
    let sunIcon = UIImageView()
    let marketIst = UILabel()
    let marketUsa = UILabel()
    let infoIcon = UIImageView()
    
    let padding: CGFloat = 12

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = Colors.secondaryBackgroundColor
        layer.borderWidth = 2
        layer.borderColor = Colors.lightBlue.cgColor
        layer.cornerRadius = 10
        addSubviews(biggerCircle,sunIcon,marketIst,marketUsa,infoIcon)
    }
    
    func configureContent() {
        biggerCircle.addSubviews(innerCircle)
        biggerCircle.backgroundColor = Colors.secondaryGreen
        biggerCircle.layer.cornerRadius = 8
        
        innerCircle.backgroundColor = Colors.customGreen
        innerCircle.layer.cornerRadius = 4
        
        marketIst.text = "Borsa İstanbul"
        marketIst.font = UIFont.systemFont(ofSize: 14)
        
        sunIcon.image = Icons.sun
        sunIcon.tintColor = Colors.yellow
        
        marketUsa.text = "Amerikan Borsaları"
        marketUsa.font = UIFont.systemFont(ofSize: 14)
        
        infoIcon.image = Icons.info
        infoIcon.tintColor = Colors.darkBlue
        
        
        NSLayoutConstraint.activate([
            biggerCircle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            biggerCircle.centerYAnchor.constraint(equalTo: centerYAnchor),
            biggerCircle.widthAnchor.constraint(equalToConstant: 16),
            biggerCircle.heightAnchor.constraint(equalToConstant: 16),
            
            innerCircle.centerYAnchor.constraint(equalTo: biggerCircle.centerYAnchor),
            innerCircle.centerXAnchor.constraint(equalTo: biggerCircle.centerXAnchor),
            innerCircle.widthAnchor.constraint(equalToConstant: 8),
            innerCircle.heightAnchor.constraint(equalToConstant: 8),
            
            marketIst.leadingAnchor.constraint(equalTo: biggerCircle.trailingAnchor, constant: 10),
            marketIst.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            sunIcon.widthAnchor.constraint(equalToConstant: 16),
            sunIcon.heightAnchor.constraint(equalToConstant: 16),
            sunIcon.leadingAnchor.constraint(equalTo: marketIst.trailingAnchor, constant: 20),
            sunIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            marketUsa.leadingAnchor.constraint(equalTo: sunIcon.trailingAnchor, constant: 10),
            marketUsa.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            infoIcon.widthAnchor.constraint(equalToConstant: 18),
            infoIcon.heightAnchor.constraint(equalToConstant: 18),
            infoIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            infoIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
    }
    
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        layer.borderColor = Colors.lightBlue.cgColor
    }
    
}
