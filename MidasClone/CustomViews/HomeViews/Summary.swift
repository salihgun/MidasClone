//
//  Summary.swift
//  MidasClone
//
//  Created by Salih Gün on 22.03.2024.
//

import UIKit

class Summary: UIView {
    
    let totalText = UILabel()
    let totalValue = UILabel()
    let eyeIcon = UIImageView()
    let dailySituation = UILabel()
    let dailyText = UILabel()

    let padding: CGFloat = 20
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureContent()
        configureOnTapEye()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureBGColor() {
        backgroundColor =  traitCollection.userInterfaceStyle == .dark ? Colors.tertiaryBackgroundColor : Colors.darkBlue
    }
    
    private func configure() {
        configureBGColor()
        layer.cornerRadius = 16
        addSubviews(totalText,totalValue,eyeIcon,dailySituation,dailyText)
    }
    
    func configureContent() {
        totalText.text = "Toplam Varlıklar"
        totalText.textColor = .white
        
        totalValue.text = "₺408.399,48"
        totalValue.textColor = .white
        totalValue.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        
        eyeIcon.image = Icons.eye
        eyeIcon.tintColor = .white
        
        dailySituation.text = "₺2.737,51 (0,67%)"
        dailySituation.textColor = Colors.customGreen
        dailySituation.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        dailyText.text = "Bugün"
        dailyText.textColor = .white
        dailyText.font = UIFont.systemFont(ofSize: 14)
        
        
        
        NSLayoutConstraint.activate([
            totalText.centerXAnchor.constraint(equalTo: centerXAnchor),
            totalText.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            
            totalValue.topAnchor.constraint(equalTo: totalText.bottomAnchor, constant: 10),
            totalValue.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -15),
            
            eyeIcon.leadingAnchor.constraint(equalTo: totalValue.trailingAnchor, constant: 10),
            eyeIcon.centerYAnchor.constraint(equalTo: totalValue.centerYAnchor),
            eyeIcon.widthAnchor.constraint(equalToConstant: 20),
            eyeIcon.heightAnchor.constraint(equalToConstant: 20),
            
            dailySituation.topAnchor.constraint(equalTo: totalValue.bottomAnchor, constant: 10),
            dailySituation.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -30),
            
            dailyText.leadingAnchor.constraint(equalTo: dailySituation.trailingAnchor, constant: 5),
            dailyText.centerYAnchor.constraint(equalTo: dailySituation.centerYAnchor)
            
        ])
    }

    func configureOnTapEye() {
        eyeIcon.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onEyeClicked))
        eyeIcon.addGestureRecognizer(tapGesture)
    }
    
    @objc func onEyeClicked() {
        if  eyeIcon.image == Icons.eye  {
            eyeIcon.image = Icons.eyeslash
            totalValue.text = "* * * * *"
            dailySituation.text = "*****(***)"
        } else {
            eyeIcon.image = Icons.eye
            totalValue.text = "₺408.399,48"
            dailySituation.text = "₺2.737,51 (0,67%)"
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        configureBGColor()
    }
    
}
