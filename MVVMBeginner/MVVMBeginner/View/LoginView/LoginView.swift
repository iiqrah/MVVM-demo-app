//
//  LoginView.swift
//  MVVMBeginner
//
//  Created by Iqrah Nadeem on 18/10/2022.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var vm = LoginViewModel()
    var body: some View {
        if vm.authenticated{
            
            VStack{
                
                Text("Welcome back, \(vm.username)!")
                
                ContentView()
                
                
                Button("Log out"){
                    vm.logOut()
                }
                .tint(.red)
                .buttonStyle(.bordered)
                
                
                
            }
            
        }
        
        else{
            
            ZStack {
                
                Color.black
                .ignoresSafeArea()
                          
                          
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Log in:")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                      

                    TextField("Username", text: $vm.username)
                        .textFieldStyle(.roundedBorder)
                        .textInputAutocapitalization(.never)
                    
                    
                    SecureField("Password", text: $vm.password)
                        .textFieldStyle(.roundedBorder)
                        .textInputAutocapitalization(.never)
                        .privacySensitive()

                    HStack{
                        Spacer()
                        Button("Log in",role: .cancel, action: vm.authenticate)
                        .tint(.green)
                        .buttonStyle(.bordered)
                        Spacer()
                    }
                }
                .alert("Access denied", isPresented: $vm.invalid) {
                    Button("Dismiss"){}
                }
                .frame(width: 300)
                .padding()
            }
            .transition(.scale)
                       
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
