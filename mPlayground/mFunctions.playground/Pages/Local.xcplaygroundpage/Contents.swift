//: [Previous](@previous)

import Foundation

//: ----------------- Nesting

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
