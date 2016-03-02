//: [Previous](@previous)

import Foundation

//: ----------------- Switch

let die1 = [1,2,3,4,5,6]
let die2 = [1,2,3,4,5,6]

let rolled = (die1[2], die2[3])

switch rolled {
case (1, 1):
  print("cat's eye")
case let (a, _) where rolled.0 == rolled.1:
  print("doubles \(a)")
case let (a, b) where rolled.0 + rolled.1 == 7:
  print("sevens \(a) & \(b)")
case (6, _):
  fallthrough
case (_, 6):
  print("a six")
default:
  print("nothing")
}


//: [Next](@next)
