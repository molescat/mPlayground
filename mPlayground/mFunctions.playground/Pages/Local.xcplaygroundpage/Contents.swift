//: [Previous](@previous)
/*:
## Functions - Nesting
*/
import Foundation

func simpleFunc() -> Int {
  var y = 10
  func addFive() {
    y += 5
  }
  addFive()
  return y
}

simpleFunc()

//: [Next](@next)
