//
//  main.swift
//  GU_L6_Dinmukhambet
//
//  Created by Dinmukhambet Turysbay on 30.05.2022.
//

import Foundation

struct Journal {
    var name: String
    var point: Int
}

extension Journal: CustomStringConvertible {
    var description : String {
        return "Name: \(name), Mark: \(point)"
    }
}


struct queue <T> {
    private var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    public var head: T? {
        if isEmpty {
            print("Array is empty.")
            return nil
        } else {
            print("Last element is \(elements.last!)")
            return elements.last
        }
    }
    
    public var front: T? {
        if isEmpty {
            print("Array is empty.")
            return nil
        } else {
            print("1st element is \(elements.first!)")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print(elements)
    }
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var student = queue<Journal>()
student.enqueue(element: .init(name: "Washington", point: 4))
student.enqueue(element: .init(name: "Trump", point: 5))
student.enqueue(element: .init(name: "Biden", point: 5))
student.enqueue(element: .init(name: "Hillary", point: 3))
student.enqueue(element: .init(name: "Harris", point: 4))
student.enqueue(element: .init(name: "Klinton", point: 3))
student.enqueue(element: .init(name: "Truman", point: 4))
student.enqueue(element: .init(name: "Jennifer", point: 3))

student.printMyQueue()
student.head
student.front

let honoursPupil = student.myFilter(predicate: {$0.point == 5})
print(honoursPupil)

