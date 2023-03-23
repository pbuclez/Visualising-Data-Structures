//
//  LinkedListView.swift
//  VisualisingDataStructures
//
//  Created by Pierre Buclez on 22/03/2023.
//

import SwiftUI

struct LinkedListView: View {
    @State private var linkedList = LinkedList()
    @State private var poppedItem: Int  = 0
    @State private var peekedItem: String = ""
    @State private var StringOfCurrentItems: String = ""
    
    var body: some View {
        VStack {
            Text("Stack: \(StringOfCurrentItems)")
            Text("Peeked Item: \(peekedItem)")
            Button("Pop item", action: {pop(); displayCurrentLinkedList() })
                .padding()
                .background(Color(red: 0, green: 0, blue: 0.5))
                .clipShape(Capsule())
            Button("Push Item", action: {push(); displayCurrentLinkedList()})
                .padding()
                .background(Color(red: 0, green: 0, blue: 0.5))
                .clipShape(Capsule())
        }
    }
    
    
    
    
    func push() {
        linkedList.push(Int.random(in: 1...10))
    }
    
    func pop() {
        _ = linkedList.pop()
    }
    
    func displayCurrentLinkedList() {
        StringOfCurrentItems = linkedList.displayLinkedList()
    }
}
    

struct LinkedListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedListView()
    }
}
