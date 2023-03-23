//
//  LinkedList.swift
//  VisualisingDataStructures
//
//  Created by Pierre Buclez on 22/03/2023.
//

import Foundation

class Node {
    var element: Int
    var nextPointer: Node?

    init(_ value: Int) {
        self.element = value
        self.nextPointer = nil
    }
}


class LinkedList {
    var head: Node?

    func push(_ value: Int) {
        let newNode = Node(value)

        if head == nil {
            head = newNode
        } else {
            var currentNode = head
            while currentNode?.nextPointer != nil {
                currentNode = currentNode?.nextPointer
            }
            currentNode?.nextPointer = newNode
        }
    }

    func pop() -> Int? {
        if head == nil {
            return nil
        }

        var currentNode = head
        var previousNode: Node? = nil

        while currentNode?.nextPointer != nil {
            previousNode = currentNode
            currentNode = currentNode?.nextPointer
        }
        previousNode?.nextPointer = nil

        return currentNode?.element
    }
    
    func displayLinkedList() -> String  {
        var displayItemsInStrings = ""
        var currentNode = head
        while currentNode != nil {
          displayItemsInStrings = displayItemsInStrings + " | " + String((currentNode!.element))
          currentNode = currentNode!.nextPointer
        }
        return displayItemsInStrings
    }
    
}
