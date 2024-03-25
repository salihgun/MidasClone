//
//  MyInvestsCard.swift
//  MidasClone
//
//  Created by Salih Gün on 24.03.2024.
//

import UIKit

class MyInvestsCard: UIView {
    
    let myInvestText = UILabel()
    let totalValueText = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubviews(myInvestText,totalValueText)
        
        myInvestText.text = "Yatırımlarım"
        myInvestText.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        totalValueText.text = "Toplam Değer (T)"
        totalValueText.textColor = Colors.darkBlue
        totalValueText.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        NSLayoutConstraint.activate([
            myInvestText.centerYAnchor.constraint(equalTo: centerYAnchor),
            myInvestText.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            totalValueText.centerYAnchor.constraint(equalTo: centerYAnchor),
            totalValueText.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
}
