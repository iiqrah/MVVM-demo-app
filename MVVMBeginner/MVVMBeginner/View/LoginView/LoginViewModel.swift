//
//  LoginViewModel.swift
//  MVVMBeginner
//
//  Created by Iqrah Nadeem on 18/10/2022.
//

import Foundation
import SwiftUI

extension LoginView {
    
    final class LoginViewModel: ObservableObject{
        
        @AppStorage("AUTH_KEY") var authenticated: Bool = false {
            willSet{objectWillChange.send()}
        }
        
        @AppStorage("USER_KEY") var username: String = ""
        @Published var password: String = ""
        @Published var invalid: Bool = false
        
        private var testUser = "iiqrah"
        private var testPassword = "password"
        
        init(){
            
            print("Logged on? \(authenticated)\nusername: \(password)")
            
            
        }
        
        func toggleAuthentication(){
            password = ""
            withAnimation{
                authenticated.toggle()
            }
        }
        
        func authenticate(){
            guard username == testUser else {
                invalid = true
                return
            }
            
            
            guard password == testPassword else {
                invalid = true
                return
            }
            
            toggleAuthentication()
            
            
        }
        
        
        func logOut(){
            
            toggleAuthentication()
        }
        
        
        
        
    }
}
