//
//  CartView.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-04-04.
//

import SwiftUI

struct CartView: View {
   @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.mint,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            ScrollView{
               if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) {product in ProductRow(product: product)
                        
                    }
                    
                    HStack{
                        Text("Your cart total is")
                        Spacer()
                     //   Text("$\(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                }else {
                    Text("Your cart is empty")
                }
                
               
            }
            .navigationTitle(Text("My cart"))
        .padding(.top)
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
