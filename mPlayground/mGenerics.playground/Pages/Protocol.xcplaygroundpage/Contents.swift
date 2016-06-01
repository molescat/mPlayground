//: [Previous](@previous)
/*:
 ## Generics
 */

import Foundation

protocol QueueType {
  associatedtype Element
  
  mutating func enqueue(newElement: Element)
  mutating func dequeue() -> Element?
}

