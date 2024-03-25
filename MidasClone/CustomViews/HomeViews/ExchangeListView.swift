//
//  ExchangeListView.swift
//  MidasClone
//
//  Created by Salih Gün on 24.03.2024.
//

import UIKit

class ExchangeListView: UIView {
    let usdTotalView = ExchangeTotal()
    let exchangeListView = UITableView()
    var list: [Stock]!
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureTableView()
        configureContent()
    }
    
    convenience init(list:[Stock],exchangeText: String, totalText: String, dailyText: String ){
        self.init()
        self.list = list
        usdTotalView.set(exchange: exchangeText, total: totalText, daily: dailyText)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = Colors.backgroundColor
        layer.cornerRadius = 16
        addSubviews(usdTotalView,exchangeListView)
    }
    
    func configureTableView() {
        exchangeListView.delegate = self
        exchangeListView.dataSource = self
        exchangeListView.layer.cornerRadius = 16
        exchangeListView.register(StockCell.self, forCellReuseIdentifier: StockCell.reuseID)
    }
    
    func configureContent() {
        NSLayoutConstraint.activate([
            
            usdTotalView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            usdTotalView.leadingAnchor.constraint(equalTo: leadingAnchor),
            usdTotalView.trailingAnchor.constraint(equalTo: trailingAnchor),
            usdTotalView.heightAnchor.constraint(equalToConstant: 50),
            
            exchangeListView.topAnchor.constraint(equalTo: usdTotalView.bottomAnchor),
            exchangeListView.leadingAnchor.constraint(equalTo: leadingAnchor),
            exchangeListView.trailingAnchor.constraint(equalTo: trailingAnchor),
            exchangeListView.bottomAnchor.constraint(equalTo: bottomAnchor),

        ])
    }
}

extension ExchangeListView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StockCell.reuseID, for: indexPath) as! StockCell
        cell.set(stock: list[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }

}
