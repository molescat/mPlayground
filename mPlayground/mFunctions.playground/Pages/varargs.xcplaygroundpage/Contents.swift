//: [Previous](@previous)
/*:
## Functions - varargs
*/
import Foundation

func addDouble(doubles: Double...) -> Double {
  return doubles.reduce(0.0, combine: +)
}

let x = addDouble(1.2, 2.3, 4.5, 5.6)

//: [Next](@next)
