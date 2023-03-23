//
//  QueueView.swift
//  VisualisingDataStructures
//
//  Created by Pierre Buclez on 15/03/2023.
//


import SwiftUI


struct QueueView: View {
    @State private var queue = Queue()
    @State private var poppedItem: Int = 0
    @State private var peekedItem: String = ""
    @State private var StringOfCurrentItems: String = ""
    
    var body: some View {
        VStack {
            Text("Queue: \(StringOfCurrentItems)")
            Text("Peeked Item: \(peekedItem)")
                Button("Push Item", action: { queue.push(); displayCurrentQueue() })
                    .padding()
                    .background(Color(red: 0.5, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                Button("Pop Item", action: { pop(); displayCurrentQueue() })
                    .padding()
                    .background(Color(red: 0.5, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                Button("Peek Item", action: { peek(); displayCurrentQueue() })
                    .padding()
                    .background(Color(red: 0.5, green: 0, blue: 0.5))
                    .clipShape(Capsule())
        }
    }
    
    func pop() {
        poppedItem = queue.pop() ?? 0
    }
    
    func peek() {
        peekedItem = String(queue.peek() ?? 0)
    }
    
    func displayCurrentQueue() {
        StringOfCurrentItems = queue.displayQueue()
    }
        
    
}
