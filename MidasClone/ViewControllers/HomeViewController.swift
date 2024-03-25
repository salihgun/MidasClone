//
//  HomeViewController.swift
//  MidasClone
//
//  Created by Salih Gün on 22.03.2024.
//

import UIKit

class HomeViewController: UIViewController {
    let scrollView = UIScrollView()
    let contentView = UIView()
    let headerView = UIView()
    let welcomeView = Welcoming()
    let marketInfoView = MarketInfoView()
    let summaryView = Summary()
    let wealthView = WealthStack()
    let usdIncomeView = USDIncome()
    let myInvestView = MyInvestsCard()
    let usdListView = ExchangeListView(list: usdList, exchangeText: "Amerikan Borsaları", totalText: "$1.202,18", dailyText: "$61,09 (5,35%)")
    let tlListView = ExchangeListView(list: tlList, exchangeText: "Borsa İstanbul", totalText: "₺369.748,79", dailyText: "₺66.934,41 (22,10%)")
    let stockListView = StockListView()
    
    let padding: CGFloat = 12

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure(){
        navigationController?.isNavigationBarHidden = true
        navigationController?.tabBarController?.tabBar.isTranslucent = false
        view.addSubviews(scrollView)
        scrollView.bounces = false
        scrollView.addSubviews(contentView)
        contentView.addSubviews(headerView,welcomeView,marketInfoView,summaryView,wealthView,usdIncomeView,myInvestView,usdListView,tlListView,stockListView)
        
        headerView.backgroundColor = Colors.backgroundColor
        scrollView.backgroundColor = Colors.mainBGColor

        scrollView.pinToEdges(of: view)
        contentView.pinToEdges(of: scrollView)
        scrollView.contentInsetAdjustmentBehavior = .never
        
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 1460),
            
            headerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 415),
            
            welcomeView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: padding * 6),
            welcomeView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: padding),
            welcomeView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant:  -padding),
            welcomeView.heightAnchor.constraint(equalToConstant: 40),
            
            marketInfoView.topAnchor.constraint(equalTo: welcomeView.bottomAnchor, constant: padding),
            marketInfoView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: padding),
            marketInfoView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant:  -padding),
            marketInfoView.heightAnchor.constraint(equalToConstant: 35),
            
            summaryView.topAnchor.constraint(equalTo: marketInfoView.bottomAnchor, constant: padding + 4),
            summaryView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: padding),
            summaryView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant:  -padding),
            summaryView.heightAnchor.constraint(equalToConstant: 150),
            
            wealthView.topAnchor.constraint(equalTo: summaryView.bottomAnchor, constant: padding + 4),
            wealthView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: padding),
            wealthView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant:  -padding),
            wealthView.heightAnchor.constraint(equalToConstant: 60),
            
            usdIncomeView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: padding + 4),
            usdIncomeView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usdIncomeView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant:  -padding),
            usdIncomeView.heightAnchor.constraint(equalToConstant: 80),
            
            myInvestView.topAnchor.constraint(equalTo: usdIncomeView.bottomAnchor, constant: 30),
            myInvestView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            myInvestView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            myInvestView.heightAnchor.constraint(equalToConstant: 50),
            
            usdListView.topAnchor.constraint(equalTo: myInvestView.bottomAnchor, constant: 10),
            usdListView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usdListView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usdListView.heightAnchor.constraint(equalToConstant: CGFloat(usdList.count * 70 + 50 + 20)),
            
            tlListView.topAnchor.constraint(equalTo: usdListView.bottomAnchor, constant: 20),
            tlListView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            tlListView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            tlListView.heightAnchor.constraint(equalToConstant: CGFloat(tlList.count * 70 + 50 + 20)),
            
            stockListView.topAnchor.constraint(equalTo: tlListView.bottomAnchor, constant: 30),
            stockListView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stockListView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stockListView.heightAnchor.constraint(equalToConstant: 250),
        ])
    }
}
