//: [Previous](@previous)
/*:
## Functions - overloading
*/

import Foundation

class Text {
  func statement(name: String) {
    print("\(name)")
  }
  
  func statement() {
    print("empty")
  }
}

let script = Text()
script.statement(name: "test")
script.statement()

//: [Next](@next)
