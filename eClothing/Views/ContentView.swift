//
//  ContentView.swift
//  eClothing
//
//  Created by Semini Wickramasinghe on 2024-03-28.
//

import SwiftUI

struct ContentView: View {
    @State private var search = searchView()
    @StateObject var cartManager = CartManager()
    var colunms = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View{
        NavigationView {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.mint,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
               
                ScrollView {
                    searchView()
                    LazyVGrid(columns: colunms, spacing:20){
                        ForEach(productList, id: \.id) { product in
                            ProductCart(product: product)
                                .environmentObject(cartManager)
                        }
                    }.padding()
                    
                       // Spacer()
                }
               .navigationTitle(Text("eClothing"))
        
               // searchView()
                    
                
               
               // .navigationBarItems(trailing: <#T##View#>)
                .toolbar{
                    NavigationLink{
                        CartView()
                            .environmentObject(cartManager)
                    } label: {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                    
                    
            }
            }.background(Color.red)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    /* @State private var userName = ""
     @State private var password = ""
     @State private var wrongPassword = 0
     @State private var wronguserName = 0
     @State private var showingLoginScreen = false
     
     var body: some View {
     ZStack{
     LinearGradient(gradient: Gradient(colors: [.mint,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
     .edgesIgnoringSafeArea(.all)
     
     VStack{
     Text("Login")
     // .frame(alignment:.center)
     .font(.largeTitle)
     .bold()
     //.padding()
     //Spacer()
     
     TextField("Username", text: $userName)
     .padding()
     .frame(width: 300, height: 50)
     .background(Color.black.opacity(0.05))
     .cornerRadius(10)
     .border(.red, width: CGFloat(wronguserName))
     
     SecureField("Password", text: $password)
     .padding()
     .frame(width: 300, height: 50)
     .background(Color.black.opacity(0.05))
     .cornerRadius(10)
     .border(.red, width: CGFloat(wrongPassword))
     
     Button("Login"){
     //Authenticate user
     authenticateUser(username: userName, password: password)
     }
     .foregroundColor(.white)
     .frame(width: 300, height: 50)
     .background(Color.mint)
     .cornerRadius(10)
     
     NavigationLink(destination: Text("You are logged in @\(userName)"), isActive: $showingLoginScreen){
     EmptyView()
     }
     }
     //Color(.mint)
     
     }
     //.padding()
     }
     func authenticateUser(username: String, password: String){
     if username.lowercased() == "abc@com"{
     wrongPassword = 0
     if password.lowercased() == "abc123"{
     wrongPassword = 0
     showingLoginScreen = true
     }else{
     wrongPassword = 2
     
     } }else{
     wrongPassword = 2
     }
     
     
     
     
     
     }*/
}



#Preview {
    ContentView()
}
