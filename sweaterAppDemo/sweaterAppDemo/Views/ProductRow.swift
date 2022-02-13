//
//  ProductRow.swift
//  sweaterAppDemo
//
//  Created by Paolo Prodossimo Lopes on 08/01/22.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(Int(product.price))")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(getCustomRed())
                .onTapGesture { cartManager.removeFromCart(product) }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[0])
            .environmentObject(CartManager())
    }
}

