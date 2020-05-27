//
//  ContentView.swift
//  SwiftUI_FunctionBuilders
//
//  Created by Paymint on 2020/05/27.
//  Copyright © 2020 Paymint. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
 
    
    var body: some View {
        
        VStack{
            
            MyVStack{
                Color.blue
                    .frame(width: 100, height: 20)
                Text("Hello, SwiftUI")
                    .font(.title)
                Rectangle()
                    .frame(width: 250, height: 40)
                
            }
        }
    }
}


struct MyVStack<Content: View>: View{
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    
    var body: some View{
        VStack(alignment: .leading, spacing: 5){
            content
        }
    }
}

@_functionBuilder
struct EvenNumbers {
    static func buildBlock(_ numbers: Int...) -> [Int] {
        numbers.filter{$0.isMultiple(of: 2)}
    }
    static func buldBlock(_ numbers: [Int]) -> [Int] {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
