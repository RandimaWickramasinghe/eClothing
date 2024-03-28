//
//  ContentView.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-03-28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.mint,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    //.padding()
                Spacer()
                
                TextField("Username", text: $userName)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                
            }
            //Color(.mint)
            
        }
        //.padding()
    }
}

#Preview {
    ContentView()
}
