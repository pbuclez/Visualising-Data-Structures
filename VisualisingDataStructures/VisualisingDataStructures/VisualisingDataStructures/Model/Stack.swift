//
//  Model.swift
//  VisualisingDataStructures
//
//  Created by Pierre Buclez on 15/03/2023.
//

import Foundation


class Stack: ObservableObject {
    var items: [Int] = []
    
    func pop() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return self.items.remove(at: items.count-1)
        }
    }
   
    
    
    func peek() -> Int? {
        if self.items.count > 0 {
            return self.items[items.count-1]
        } else {
            return nil
        }
             
    }
    
    func push() {
        let randomNumber = Int.random(in: 1...1000)
        self.items.insert(randomNumber, at: items.count)
    }
    
    func displayStack() -> String {
        var displayItemsInStrings = ""
        for item in items {
            let stringOfSingleItem = String(item)
            displayItemsInStrings = displayItemsInStrings + " | " +  stringOfSingleItem
        }
        return displayItemsInStrings
    }
    
    
}

//refkv3werfv
