//
//  CartButton.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-04-04.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        
        ZStack(alignment:.topTrailing){
            Image(systemName: "cart")
                .foregroundColor(.black)//.bold()
                .padding(.top, 5)
            
            if numberOfProducts > 0{
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.993, brightness: 0.78, opacity: 0.987))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
