//
//  ContentView.swift
//  sweaterAppDemo
//
//  Created by Paolo Prodossimo Lopes on 08/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var cartManager = CartManager()
    var colunms = [GridItem.init(.adaptive(minimum: 160),
                                 spacing: 20)]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colunms, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(
                        numberOfProducts: cartManager.products.count
                    )
                }
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
