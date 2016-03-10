//: [Previous](@previous)
/*:
## Control Flow - if case
*/
import Foundation

enum Number {
  case Integer(Int)
  case FloatingPoint(Double)
  case Text(String)
}

let someNumber = Number.FloatingPoint(12.34)
//let someNumber = Number.Text("12.34")

if case .FloatingPoint(let number) = someNumber where number > 12.0 {
  print("SomeNumber \(number)")
}


let someAges: [Number] = [.Integer(19), .FloatingPoint(20.5), .Text("21")]

for case .FloatingPoint(let age) in someAges {
  print("Age \(age)")
}

//: [Next](@next)
