//
//  Product.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-03-30.
//

import Foundation

struct Product:Identifiable{
    
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var desctiption: String
    
}
 

var productList = [Product(name: "Dress", image: "dress", price: 15, desctiption: "gdvgsfyug"),
                   Product(name: "Tshirt", image: "tShirt", price: 10, desctiption: "tytr"),
                   Product(name: "Skirt", image: "skirt", price: 12, desctiption: "gdvgstrtrfyug"),
                   Product(name: "Sweater", image: "sweater", price: 10,desctiption: "gdvgsth  thy fyug"),
                   Product(name: "Party Dress", image: "partyDress", price: 12,desctiption: "gdvgth trt t ty hyyr sfyug")]
