//
//  SearchView.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-04-05.
//

import SwiftUI

struct searchView: View {
    @State var search: String = ""
    var body: some View {
        
      //  Form {
            HStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding(.leading)
                    
                    TextField("Search here", text:  $search)
                        
                        .padding()
                }.background(Color(red: 0.662, green: 0.835, blue: 0.829))
                    .cornerRadius(20)
                    .frame(width: 300, height: 102)
            }
            .padding(.horizontal)
            
        //}
        
    }
}

#Preview {
    searchView()
}

