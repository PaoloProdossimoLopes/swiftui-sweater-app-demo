//
//  CardManager.swift
//  sweaterAppDemo
//
//  Created by Paolo Prodossimo Lopes on 08/01/22.
//

import Foundation

final class CartManager: ObservableObject {
    
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Double = 0
    
    func addToCard(_ product: Product) {
        products.append(product)
        total +=  product.price
    }
    
    func removeFromCart(_ product: Product) {
        products = products.filter({ $0.id != product.id })
        total -= product.price
    }
    
}
