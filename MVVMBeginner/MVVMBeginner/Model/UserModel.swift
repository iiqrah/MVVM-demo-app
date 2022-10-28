//
//  ItemModel.swift
//  MVVMBeginner
//
//  Created by Iqrah Nadeem on 17/10/2022.
//

import Foundation

struct User: Identifiable, Codable{
    
    var id = UUID()
    var name: String
    var email: String
    var age: Int
    
    static var exampleUser = User(name: "Joe", email: "test@icloud.com", age: 45)
    
    
}
