//
//  USDIncome.swift
//  MidasClone
//
//  Created by Salih Gün on 23.03.2024.
//

import UIKit

class USDIncome: UIView {
    let usdText = UILabel()
    let usdDescription = UILabel()
    let arrowView = UIView()
    let arrowIcon = UIImageView()
    let ratio = UILabel()
    let ratioView = UIView()
    
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
        backgroundColor = Colors.backgroundColor
        layer.cornerRadius = 16
        addSubviews(usdText,usdDescription,arrowView,ratioView)
    }
    
    func configureContent() {
        arrowView.addSubviews(arrowIcon)
        ratioView.addSubviews(ratio)
        
        usdText.text = "Dolar Getirisi"
        usdText.font = UIFont.systemFont(ofSize: 16,weight: .semibold)
        
        usdDescription.text = "Yıllık 4% getiri oranı ile doların değerlensin."
        usdDescription.textColor = .secondaryLabel
        usdDescription.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        
        arrowIcon.image = Icons.chevronRight
        arrowIcon.tintColor = Colors.darkBlue
        arrowIcon.contentMode = .scaleAspectFill
        
        arrowView.backgroundColor = Colors.lightBlue
        arrowView.layer.cornerRadius = 10
        
        ratioView.layer.backgroundColor = UIColor.systemGray.withAlphaComponent(0.2).cgColor
        ratioView.layer.cornerRadius = 6
        
        ratio.text = "4%"
        ratio.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        ratio.textColor = .secondaryLabel
        
        NSLayoutConstraint.activate([
            usdText.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -12),
            usdText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            
            usdDescription.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 12),
            usdDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            
            arrowView.leadingAnchor.constraint(equalTo: usdText.trailingAnchor, constant: 8),
            arrowView.centerYAnchor.constraint(equalTo: usdText.centerYAnchor),
            arrowView.widthAnchor.constraint(equalToConstant: 23),
            arrowView.heightAnchor.constraint(equalToConstant: 23),
            
            arrowIcon.widthAnchor.constraint(equalToConstant: 10),
            arrowIcon.heightAnchor.constraint(equalToConstant: 10),
            arrowIcon.centerXAnchor.constraint(equalTo: arrowView.centerXAnchor),
            arrowIcon.centerYAnchor.constraint(equalTo: arrowView.centerYAnchor),
            
            ratioView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding - 4),
            ratioView.centerYAnchor.constraint(equalTo: usdText.centerYAnchor),
            ratioView.widthAnchor.constraint(equalToConstant: 35),
            ratioView.heightAnchor.constraint(equalToConstant: 25),
            
            ratio.centerXAnchor.constraint(equalTo: ratioView.centerXAnchor),
            ratio.centerYAnchor.constraint(equalTo: ratioView.centerYAnchor),
        ])
    }
}
