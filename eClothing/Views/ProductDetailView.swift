//
//  ProductDetailView.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-04-05.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    var body: some View {
    ScrollView{
       
            ZStack{
                
                Color.white
                
                VStack(alignment: .leading){
                    
                    ZStack(alignment: .topTrailing){
                        
                        Image(product.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                            //
                           
                            
                        
                          //  .ignoresSafeArea(edges: .top)
                            .frame(width: 200, height: 300)
                        
                    VStack{
                        HStack{
                            Text(product.name)
                                .font(.title2)
                                .bold()
                            
                            Text("$\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                
                        }
                        .padding(.vertical)
                       
                        Text("Desctiption")
                            .font(.title3)
                            .bold().fontWeight(.medium)
                            //.padding()
                        
                        Text(product.desctiption)
                        //Spacer()
                        
                        HStack(alignment: .top){
                            
                            VStack(alignment: .leading){
                                
                                Text("Size")
                                
                            }
                           // .frame( alignment: .leading)
                        }//.padding(.vertical)
                        PaymentButton(action:{})
                            .frame()
                    }
                        
                   
                    
                   // Image(systemName: "heart")
                }
            }
            
        }
          // .ignoresSafeArea()
    }
}


#Preview {
    ProductDetailView(product: productList[1])
   // ProductDetailView( )
}


