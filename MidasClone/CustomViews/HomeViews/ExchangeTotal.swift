//
//  ExchangeTotal.swift
//  MidasClone
//
//  Created by Salih Gün on 24.03.2024.
//

import UIKit

class ExchangeTotal: UIView {
    let exchangeLabel = UILabel()
    let totalValue = UILabel()
    let dailyValue = UILabel()
    
    let padding: CGFloat = 12

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubviews(exchangeLabel,totalValue,dailyValue)
        
        dailyValue.textColor = Colors.customGreen
        
        exchangeLabel.font = UIFont.systemFont(ofSize: 18,weight: .medium)
        totalValue.font = UIFont.systemFont(ofSize: 18,weight: .semibold)
        dailyValue.font = UIFont.systemFont(ofSize: 14,weight: .semibold)
        
        NSLayoutConstraint.activate([
            exchangeLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            exchangeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            
            totalValue.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -10),
            totalValue.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding - 4),
            
            dailyValue.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 10),
            dailyValue.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding - 4),

        ])
    }
    
    func set(exchange: String, total: String, daily: String){
        exchangeLabel.text = exchange
        totalValue.text = total
        dailyValue.text = daily
    }
    
}
