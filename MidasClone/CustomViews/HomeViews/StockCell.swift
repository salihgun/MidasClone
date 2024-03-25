//
//  StockCell.swift
//  MidasClone
//
//  Created by Salih Gün on 24.03.2024.
//

import UIKit

class StockCell: UITableViewCell {
    static let reuseID = "StockCell"
    
    let stockImage = UIImageView()
    let stockName = UILabel()
    let stockPrice = UILabel()
    let totalValue = UILabel()
    let dailyValue = UILabel()
    
    let padding: CGFloat = 12

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        configureContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = Colors.backgroundColor
        addSubviews(stockImage,stockName,stockPrice,totalValue,dailyValue)
    }
    
    func set(stock: Stock) {
        stockName.text = stock.name
        stockPrice.text = "\(stock.prefix)\(stock.lastPrice.formatted())"
        totalValue.text = "\(stock.prefix)\(stock.totalValue.formatted())"
        dailyValue.text = "\(stock.inProfit ? "":"-")\(stock.prefix)\(stock.dailyValue)"
        downloadImage(urlString: stock.image)
        dailyValue.textColor = stock.inProfit ? Colors.customGreen: Colors.customRed
    }
    
    func downloadImage(urlString: String) {
        guard let url = URL(string: urlString) else {return}
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self else {return}
            if error != nil {return} else {
                if let data = data {
                    DispatchQueue.main.async {
                        self.stockImage.image = UIImage(data: data)
                    }
                }
            }
        }
        task.resume()
    }
    
    func configureContent() {
        
        stockName.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        
        stockImage.layer.cornerRadius = 15
        stockImage.clipsToBounds = true
        stockImage.contentMode = .scaleAspectFit
        stockImage.layer.backgroundColor = UIColor.white.cgColor
        
        stockPrice.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        stockPrice.textColor = .secondaryLabel
        
        totalValue.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        dailyValue.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        NSLayoutConstraint.activate([
            stockImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            stockImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            stockImage.widthAnchor.constraint(equalToConstant: 30),
            stockImage.heightAnchor.constraint(equalToConstant: 30),
            
            stockName.centerYAnchor.constraint(equalTo: centerYAnchor,constant: -10),
            stockName.leadingAnchor.constraint(equalTo: stockImage.trailingAnchor, constant: 15),
            
            stockPrice.centerYAnchor.constraint(equalTo: centerYAnchor,constant: 10),
            stockPrice.leadingAnchor.constraint(equalTo: stockImage.trailingAnchor, constant: 15),
            
            totalValue.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding - 4),
            totalValue.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -10),
            
            dailyValue.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding - 4),
            dailyValue.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 10)
        ])
    }
}
