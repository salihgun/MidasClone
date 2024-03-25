//
//  List.swift
//  MidasClone
//
//  Created by Salih Gün on 25.03.2024.
//

import Foundation

struct StockList {
    let emoji: String
    let title: String
    let count: Int
}

let st1 = StockList(emoji: "👀", title: "Takip Ettiklerim", count: 64)
let st2 = StockList(emoji: "😄", title: "Fintables", count: 10)
let st3 = StockList(emoji: "👋", title: "test", count: 2)
let stockList = [st1,st2,st3]
