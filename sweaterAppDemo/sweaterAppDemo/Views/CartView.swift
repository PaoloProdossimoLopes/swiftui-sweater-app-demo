//
//  CartView.swift
//  sweaterAppDemo
//
//  Created by Paolo Prodossimo Lopes on 08/01/22.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            
            if cartManager.products.isEmpty {
                Text("Your card is empty")
            } else {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total)")
                        .bold()
                }
            }
            
        }
        .navigationTitle(Text("Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
