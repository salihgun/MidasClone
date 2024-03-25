//
//  WealthStack.swift
//  MidasClone
//
//  Created by Salih Gün on 23.03.2024.
//

import UIKit

class WealthStack: UIStackView {
    let tlCard = WealthCard(text: "TL Alım Gücü", priceText: "₺113,85", image: Icons.add!)
    let usdCard = WealthCard(text: "USD Alım Gücü", priceText: "$5,57", image: Icons.swap!)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        axis = .horizontal
        distribution = .fillEqually
        spacing = 20        
        
        addArrangedSubview(tlCard)
        addArrangedSubview(usdCard)
    
    }
    


}
