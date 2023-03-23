//
//  StackView.swift
//  VisualisingDataStructures
//
//  Created by Pierre Buclez on 15/03/2023.
//

import SwiftUI

struct StackView: View {
    @State private var stack = Stack()
    @State private var poppedItem: Int  = 0
    @State private var peekedItem: String = ""
    @State private var StringOfCurrentItems: String = ""

    
    var body: some View {
        VStack {
            Text("Stack: \(StringOfCurrentItems)")
            Text("Peeked Item: \(peekedItem)")
                Button("Peek Item", action: {peek()})
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                Button("Pop item", action: {pop(); displayCurrentStack() })
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                Button("Push Item", action: {stack.push(); displayCurrentStack()})
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
        }
    }

    func pop() {
        poppedItem = stack.pop() ?? 0
    }
    
    func peek() {
        peekedItem = String(stack.peek() ?? 0)
    }
    
    func displayCurrentStack() {
        StringOfCurrentItems = stack.displayStack()
    }
    
    
    
    
}
