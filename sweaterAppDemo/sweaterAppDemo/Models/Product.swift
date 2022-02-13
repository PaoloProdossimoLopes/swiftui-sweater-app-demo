//
//  Product.swift
//  sweaterAppDemo
//
//  Created by Paolo Prodossimo Lopes on 08/01/22.
//

import Foundation

struct Product: Identifiable {
    
    let id: UUID = UUID()
    let name: String
    let image: String
    let price: Double
    
}

var productList: [Product] = [
    .init(name: "Orange sweater", image: "orangeSweater", price: 54),
    .init(name: "Red sweater", image: "redSweater", price: 54),
    .init(name: "Black sweater", image: "blackSweater", price: 54),
    .init(name: "Dark blue sweater", image: "darkBlueSweater", price: 54),
    .init(name: "Rainbow sweater", image: "pugSweater", price: 54),
    .init(name: "Orange sweater", image: "orangeSweater", price: 54),
    .init(name: "Red sweater", image: "redSweater", price: 54),
    .init(name: "Black sweater", image: "blackSweater", price: 54),
    .init(name: "Dark blue sweater", image: "darkBlueSweater", price: 54),
    .init(name: "Rainbow sweater", image: "pugSweater", price: 54),
    .init(name: "Orange sweater", image: "orangeSweater", price: 54),
    .init(name: "Red sweater", image: "redSweater", price: 54),
    .init(name: "Black sweater", image: "blackSweater", price: 54),
    .init(name: "Dark blue sweater", image: "darkBlueSweater", price: 54),
    .init(name: "Rainbow sweater", image: "pugSweater", price: 54),
    .init(name: "Orange sweater", image: "orangeSweater", price: 54),
    .init(name: "Red sweater", image: "redSweater", price: 54),
    .init(name: "Black sweater", image: "blackSweater", price: 54),
    .init(name: "Dark blue sweater", image: "darkBlueSweater", price: 54),
    .init(name: "Rainbow sweater", image: "pugSweater", price: 54),
    .init(name: "Orange sweater", image: "orangeSweater", price: 54),
    .init(name: "Red sweater", image: "redSweater", price: 54),
    .init(name: "Black sweater", image: "blackSweater", price: 54),
    .init(name: "Dark blue sweater", image: "darkBlueSweater", price: 54),
    .init(name: "Rainbow sweater", image: "pugSweater", price: 54),
]
