//: [Previous](@previous)
/*:
## Functions - varargs
*/
import Foundation

func addDoubles(_ doubles: Double...) -> Double {
  return doubles.reduce(0.0, +)
}

let x = addDoubles(1.2, 2.3, 4.5, 5.6)

//: [Next](@next)
