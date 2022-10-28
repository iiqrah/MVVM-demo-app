//
//  ContentViewModel.swift
//  MVVMBeginner
//
//  Created by Iqrah Nadeem on 17/10/2022.
//

import Foundation
import SwiftUI

extension ContentView{
    
    final class ContentViewModel: ObservableObject{
        @Published var isTurnedOn: Bool = true
        @Published var counter: Int = 0
        
        func increment(){
            counter+=1
        }
        
    }
}
