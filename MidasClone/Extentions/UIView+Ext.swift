//
//  UIView+Ext.swift
//  MidasClone
//
//  Created by Salih Gün on 22.03.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func addShadow(opacity: Float = 0.1, offset: CGSize = CGSize(width: 0, height: 0), color: CGColor = UIColor.black.cgColor, radius: CGFloat = 0.5) {
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowColor = color
        layer.shadowRadius = radius
    }
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
        ])
    }
}
