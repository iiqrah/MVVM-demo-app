//
//  ContentView.swift
//  MVVMBeginner
//
//  Created by Iqrah Nadeem on 17/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ContentViewModel()
    
    var body: some View {
        VStack(spacing: 30) {
           
            Toggle("Toggle Switch", isOn: $vm.isTurnedOn)
            
            
            HStack{
                
                Button("Increment"){
                    vm.increment()
                }
                
                Text("\(vm.counter)")
                
            }
          
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
