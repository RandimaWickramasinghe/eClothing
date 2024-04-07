//
//  ProductCart.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-04-04.
//

import SwiftUI

struct ProductCart: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width:180)
                    .scaledToFit()
                
                 VStack(alignment:.leading){
                 Text(product.name)
                 .bold()
                 
                Text("$\(product.price)")
                 .font(.caption)
                 }
                .padding()
                .frame(width: 180,alignment: .leading)
                .background(.ultraThinMaterial)
                 .cornerRadius(20)
                 
                 }.frame(width: 180, height: 300)
                .shadow(radius: 3)
            
            Button{
               // print("Added to cart!")
                cartManager.addToCart(product: product)
            }label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
        }
}

#Preview {
    ProductCart(product: productList[0])
        .environmentObject(CartManager())
}
