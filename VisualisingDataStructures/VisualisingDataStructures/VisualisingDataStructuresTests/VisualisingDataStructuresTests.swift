//
//  VisualisingDataStructuresTests.swift
//  VisualisingDataStructuresTests
//
//  Created by Pierre Buclez on 15/03/2023.
//

import XCTest
@testable import VisualisingDataStructures

@testable import VisualisingDataStructures

class StackTests: XCTestCase {
    
    func testPush() {
        let stack = Stack()
        stack.push()
        XCTAssertFalse(stack.items.isEmpty)
    }
    
    func testPop() {
        let stack = Stack()
        stack.push()
        stack.push()
        stack.push()
            
        let changingCountOfStackToTestPop = stack.items.count
            
        let poppedItem = stack.pop()
            
        XCTAssertEqual(poppedItem, stack.items[changingCountOfStackToTestPop-1])
        XCTAssertEqual(stack.items.count, changingCountOfStackToTestPop - 1)
    }
    
    func testPeek() {
        let stack = Stack()
        stack.push()
        stack.push()
        let peekedItem = stack.peek()
        XCTAssertEqual(peekedItem, stack.items.last)
    }
    
    func testDisplayStack() {
        let stack = Stack()
        stack.push()
        let displayString = stack.displayStack()
        XCTAssertFalse(displayString.isEmpty)
    }
    
}

class QueueTests: XCTestCase {
    
    func testPush() {
        let queue = Queue()
        queue.push()
        XCTAssertFalse(queue.items.isEmpty)
    }
    
    func testPop() {
        let queue = Queue()
        queue.push()
        let poppedItem = queue.pop()
        XCTAssertEqual(poppedItem, queue.items[0])
    }
    
    func testPeek() {
        let queue = Queue()
        queue.push()
        let peekedItem = queue.peek()
        XCTAssertEqual(peekedItem, queue.items[0])
    }
    
    func testDisplayStack() {
        let queue = Queue()
        queue.push()
        let displayString = queue.displayQueue()
        XCTAssertFalse(displayString.isEmpty)
    }
    
}

class LinkedListTests: XCTestCase {
    func testEmptyList() {
        let list = LinkedList()
        XCTAssertNil(list.pop())
    }

    func testPush() {
        let list = LinkedList()
        list.push(1)
        list.push(2)
        XCTAssertEqual(list.pop(), 2)
        XCTAssertEqual(list.pop(), 1)
    }

    func testPop() {
        let list = LinkedList()
        list.push(1)
        list.push(2)
        XCTAssertEqual(list.pop(), 2)
        XCTAssertEqual(list.pop(), 1)
    }

    
}
