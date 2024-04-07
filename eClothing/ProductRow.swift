//
//  ProductRow.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-04-04.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager:  CartManager
    var product: Product
    var body: some View {
        HStack(spacing: 20){
            
            
            /* Image(product.image)
             .resizable()
             .cornerRadius(20)
             .frame(width:180)
             .scaledToFit()*/
           Image(product.image)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 50)
               .cornerRadius(10)
            
            
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.993, brightness: 0.78, opacity: 0.987))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
                
            
        }
            //.frame(maxWidth: .infinity, alignment: .leading)
        //.frame(minWidth: 0, maxWidth: .infinity)
        .padding(.horizontal)
            .frame(width: 400, height: 100)
            .background(Color(hue: 0.498, saturation: 0.257, brightness: 0.752))
            .cornerRadius(20)
    }
}

#Preview {
    ProductRow(product: productList[3])
        .environmentObject(CartManager())
}
