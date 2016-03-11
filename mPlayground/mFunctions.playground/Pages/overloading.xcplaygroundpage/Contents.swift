//: [Previous](@previous)
/*:
## Functions - varargs
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
script.statement("test")
script.statement()

//: [Next](@next)
