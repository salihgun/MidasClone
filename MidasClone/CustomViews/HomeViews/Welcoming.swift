//
//  Welcoming.swift
//  MidasClone
//
//  Created by Salih Gün on 22.03.2024.
//

import UIKit

class Welcoming: UIView {
    let helloText = UILabel()
    let clockIcon = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureLabel()
        configureClockIcon()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .clear
        addSubviews(helloText,clockIcon)
    }
    
    func configureLabel() {
        helloText.text = "Merhaba Salih 👋"
        
        NSLayoutConstraint.activate([
            helloText.leadingAnchor.constraint(equalTo: leadingAnchor),
            helloText.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    func configureClockIcon() {
        clockIcon.image = Icons.clock
        clockIcon.tintColor = .label
        
        NSLayoutConstraint.activate([
            clockIcon.trailingAnchor.constraint(equalTo: trailingAnchor),
            clockIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            clockIcon.heightAnchor.constraint(equalToConstant: 25),
            clockIcon.widthAnchor.constraint(equalToConstant: 25)
        ])
    }
    
}
