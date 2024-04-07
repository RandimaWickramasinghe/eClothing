//
//  ProductDetails.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-04-05.
//

import Foundation

struct ProductDetails: Decodable{
    let id : Int
    let name: String
    let description: String
    let price : Double
    let image: String
}

//struct ProductDetailsRequest{
 //   let request: [ProductDetails]
//}

//struct MockData{
    
    ///static let
var sampleData = ProductDetails(id: 001, name: "T-Shirt", description: "VCAY Eyelet Embroidery Ruffle Hem Dress Without Belt", price: 18.00, image: "tShirt")
//}
   
