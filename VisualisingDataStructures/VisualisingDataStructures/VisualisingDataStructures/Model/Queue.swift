//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by Pierre Buclez on 15/03/2023.
//

import Foundation

class Queue: ObservableObject {
    var items: [Int] = []
    
    func push() {
        let randomNumber = Int.random(in: 1...1000)
        self.items.insert(randomNumber, at: items.count)
    }
    
    func pop() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return self.items.remove(at: 0)
        }
    }
    
    func peek() -> Int? {
        if self.items.count > 0 {
            return self.items[0]
        } else {
            return nil
        }
             
    }
    
    func displayQueue() -> String {
        var displayItemsInStrings = ""
        for item in items {
            let stringOfSingleItem = String(item)
            displayItemsInStrings = displayItemsInStrings + " | " +  stringOfSingleItem
        }
        return displayItemsInStrings
    }
    
}
