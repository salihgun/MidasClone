//
//  Stock.swift
//  MidasClone
//
//  Created by Salih Gün on 24.03.2024.
//

import Foundation

struct Stock {
    let id = UUID()
    let name: String
    let image: String
    let lastPrice: Double
    let totalValue: Double
    let dailyValue: String
    let prefix: String
    let inProfit: Bool
}

let arm = Stock(name: "ARM", image: "https://assets.hardwarezone.com/img/2023/09/arm-corporate-logo.jpg", lastPrice: 134.53, totalValue: 428.68, dailyValue: "219,87 (105,30%)", prefix: "$", inProfit: true)
let rivian = Stock(name: "RIVN", image: "https://www.rivianownersforum.com/attachments/rivian-logo-png.479/", lastPrice: 11.05, totalValue: 773.50, dailyValue: "158,77 (-17,03%)", prefix: "$", inProfit: false)

let koc = Stock(name: "KCHOL", image: "https://fws.forinvestcdn.com/cdn/symbol-logos/BIST/KCHOL.png", lastPrice: 191.05, totalValue: 50381.23, dailyValue: "8.158,77 (9,03%)", prefix: "₺", inProfit: true)
let pegasus = Stock(name: "PGSUS", image: "https://s3-symbol-logo.tradingview.com/pegasus--600.png", lastPrice: 822.55, totalValue: 49221.45, dailyValue: "3.258,46 (12,01%)", prefix: "₺", inProfit: true)
let thy = Stock(name: "THYAO", image: "https://s3-symbol-logo.tradingview.com/turk-hava-yollari--600.png", lastPrice: 294.05, totalValue: 52451.31, dailyValue: "9.458,99 (14,24%)", prefix: "₺", inProfit: true)
let alarko = Stock(name: "ALARK", image: "https://fws.forinvestcdn.com/cdn/symbol-logos/BIST/ALARK.png", lastPrice: 132.5, totalValue: 51182.12, dailyValue: "11.158,23 (32,15%)", prefix: "₺", inProfit: true)


let usdList = [arm,rivian]
let tlList = [koc,pegasus,thy,alarko]

